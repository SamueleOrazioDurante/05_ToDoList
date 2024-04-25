package model;

public class ResetPasswordBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;
	private SMTP mail;

	public ResetPasswordBean() {
		super();
		theDAO = new DAO();
		mail = new SMTP();
	}
	
	public boolean updatePassword(String email,String password)
	{
		Boolean check = false;
		
		Utente user = new Utente(email,password,true); //ultimo valore (booleano) utilizzato solo per differenziare i costruttori di Utente da user-psw e email-psw
		check = theDAO.updatePassword(user);
		this.sendConfirm(email);
		
		return check;
	}
	
	public void sendConfirm(String email) {
		mail.sendEmail(email, "Reset della password effettuato con successo!", "Se non sei stato te allora ti consigliamo di reimpostare nuovamente la password."); 
	}
	
}
