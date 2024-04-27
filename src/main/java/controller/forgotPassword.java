package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ForgotPasswordBean;

/**
 * Servlet implementation class login
 */
public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati dell`autenticazione
    private ForgotPasswordBean forgotPassword;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		forgotPassword = new ForgotPasswordBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del form di login
		String email = request.getParameter("email");
		
		//utilizzo il bean forgotPassword per controllare l`esistenza dell`utente nel database e successivamente mandare un e-mail col codice di reset password
		if(forgotPassword.checkEmail(email))
		{
			//utente esiste, quindi generato l`OTP, mando un e-mail e lo porto alla pagina di reset
			
			//genero l`OTP di 6 cifre randomiche da 000000 a 999999
		    Random rnd = new Random();
		    int number = rnd.nextInt(999999);
		    String OTP =  String.format("%06d", number);
			
			forgotPassword.sendOTP(email,OTP);
			
			//salvo l`OTP nella sessione per garantire che solo gli utenti autorizzati possano essere in quella pagina e garantire che il codice OTP sia al sicuro nel server
			HttpSession session = request.getSession(false);
			if(session!=null)
			{
				//invalido eventualmente una sessione già esistente
				session.invalidate();
			}
			//creo la sessione e aggiungo l`attributo
			session = request.getSession();
			session.setAttribute("codiceOTP", OTP);
			session.setAttribute("email", email);

			//redirect alla pagina jsp responsabile al reset
			response.sendRedirect("pages/insertOTP.jsp");
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("resetPassword");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
