package model;

public class ForgotPasswordBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;
	private SMTP mail;

	public ForgotPasswordBean() {
		super();
		theDAO = new DAO();
		mail = new SMTP();
	}
	
	public boolean checkEmail(String email)
	{
		Boolean check = false;
		
		Utente user = new Utente(email);
		check = theDAO.checkEmail(user);
		
		return check;
	}
	
	public void sendOTP(String email, String OTP) {
		mail.sendEmail(email, "Richiesta di reset della password!", "Usa il seguente codice: "+OTP+ " "+"\n Se non hai dimenticato la password puoi ignorare questa email."); 
	}
	
}
