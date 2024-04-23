package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignupBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Connection conn;

	public SignupBean() {
		super();
		
		//connessione al database col driver JDBC
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://azure.israiken.xyz:3306/TPSITToDoList", "admin", "admin");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public boolean addUser(String username, String email, String password)
	{
		String query = "SELECT username FROM utente WHERE (username='"+username+"' OR email='"+username+"') AND password='"+password+"'";
		
		boolean check = false;
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
	
	

}
