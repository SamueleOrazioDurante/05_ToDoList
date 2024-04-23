package model;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	
	private Connection conn;

	public DAO() {
		//connessione al database col driver JDBC
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://azure.israiken.xyz:3306/TPSITToDoList", "admin", "admin");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean addUser(Utente user) {
		
		Data data = new Data();
		String password = this.encryptPass(user.getPassword());
	
		String query = "INSERT INTO `utente`(`username`, `email`, `password`, `data_iscrizione`) VALUES ('"+user.getUsername()+"','"+user.getEmail()+"','"+password+"','"+data.getData()+"')";
		
		boolean check = false;
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
}