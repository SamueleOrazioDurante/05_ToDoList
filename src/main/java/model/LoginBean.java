package model;

public class LoginBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public LoginBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean checkUser(String username, String password)
	{
		Boolean check = false;
		
		Utente user = new Utente(username,password);
		check = theDAO.checkUser(user);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
	
}
