package model;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {
	
	private Connection conn;
	SMTP mail;

	public DAO() {
		//connessione al database col driver JDBC
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://192.168.1.80:3306/TPSITToDoList", "admin", "admin");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mail = new SMTP();
	}
	
	public boolean addUser(Utente user) {
		
		Boolean check = false;
		
		if(this.checkDBCollision(user)){
		
			Data data = new Data();
			String password = this.encryptPass(user.getPassword());
		
			String query = "INSERT INTO `utente`(`username`, `email`, `password`, `data_iscrizione`) VALUES ('"+user.getUsername()+"','"+user.getEmail()+"','"+password+"','"+data.getData()+"')";
			
			
			try {
				int res = conn.createStatement().executeUpdate(query);
				if(res!=0)
				{
					check = true;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return check;
    }
	
	public boolean checkUser(Utente user){
		
		String password = this.encryptPass(user.getPassword());
		String query = "SELECT username FROM utente WHERE (username='"+user.getUsername()+"' OR email='"+user.getUsername()+"') AND password='"+password+"'";
		
		Boolean check = false;
		try {
			ResultSet res = conn.createStatement().executeQuery(query);
			if(res.next())
			{
				check = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	public String encryptPass(String password) {
        try {
            //retrieve instance of the encryptor of SHA-256
            MessageDigest digestor = MessageDigest.getInstance("SHA-256");
		//retrieve bytes to encrypt
		            byte[] encodedhash = digestor.digest(password.getBytes(StandardCharsets.UTF_8));
		            StringBuilder encryptionValue = new StringBuilder(2 * encodedhash.length);
		//perform encryption
		            for (int i = 0; i < encodedhash.length; i++) {
		                String hexVal = Integer.toHexString(0xff & encodedhash[i]);
		                if (hexVal.length() == 1) {
		                    encryptionValue.append('0');
		                }
		                encryptionValue.append(hexVal);
		            }
		//return encrypted value
		            return encryptionValue.toString();
		} catch (Exception ex) {
		            return ex.getMessage();
		  }
	}
	
	public boolean checkPassword(String password, String hash){
		
		//verifico se la password inserita coincide con l`hash della password
		return this.encryptPass(password).equals(hash);
	}
	
	public boolean checkDBCollision(Utente user) {
		
		String query = "SELECT username FROM utente WHERE username='"+user.getUsername()+"'";
		
		Boolean check = true;
		try {
			ResultSet res = conn.createStatement().executeQuery(query);
			if(res.next())
			{
				check = false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
		
	}
	
	public int findUserID(String username) {
		
		String query = "SELECT id_utente FROM utente WHERE username='"+username+"'";
		
		int id = -1;
		
		try {
			ResultSet res = conn.createStatement().executeQuery(query);
			if(res.next())
			{
				id = res.getInt("id_utente");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	public ArrayList<Todo> fetchTodos(int id){
		
		ArrayList<Todo> todos = new ArrayList<Todo>();
		
		String query = "SELECT `id_todo`,`titolo_todo`,`descrizione_todo`,`isDone` FROM `todo` WHERE `id_lista` = '"+id+"'";
		
		try {
			ResultSet res = conn.createStatement().executeQuery(query);
			while(res.next())
			{
				//prendo i parametri datomi dalla query al DB
				int id_todo = res.getInt("id_todo");
				String titolo = res.getString("titolo_todo");
				String descrizione = res.getString("descrizione_todo");
				Boolean isDone = res.getBoolean("isDone");
				//creo un nuovo oggetto todo
				Todo todo = new Todo(id_todo,titolo,descrizione,isDone);
				//lo aggiungo all`arraylist
				todos.add(todo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return todos;
	}
	
	public UsersLists fetchUsersLists(String username){
		
		UsersLists usersLists = new UsersLists();
		 
		int id = this.findUserID(username);
		String query = "SELECT `id_lista`,`titolo_lista` FROM `lista` WHERE `id_utente`='"+id+"'";
		
		try {
			ResultSet res = conn.createStatement().executeQuery(query);
			while(res.next())
			{
				//prendo i parametri datomi dalla query al DB
				int id_lista = res.getInt("id_lista");
				String titolo = res.getString("titolo_lista");
				//richiamo la funzione per ricercare tutte le todos appartenenti a quella lista
				ArrayList<Todo> todos = this.fetchTodos(id_lista);
				//creo un nuovo oggetto lista
				Lista lista = new Lista(id_lista,titolo,todos);
				//lo aggiungo alla usersLists
				usersLists.addUsersLists(lista);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return usersLists;
	}
}