package model;

public class SignupBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public SignupBean() {
		super();
		
		//inizilizzo il DAO (con cui accedo al database)
		theDAO = new DAO();
		
	}
	
	public boolean addUser(String username, String email, String password)
	{
		Boolean check = false;
		
		Utente user = new Utente(username,email,password);
		check = theDAO.addUser(user);
		
		return check;
		
	}
	
	

}
