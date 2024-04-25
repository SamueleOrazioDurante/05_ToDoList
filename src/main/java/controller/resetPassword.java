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

import model.ResetPasswordBean;

/**
 * Servlet implementation class login
 */
@WebServlet("/resetPassword")
public class resetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati dell`autenticazione
    private ResetPasswordBean resetPassword;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public resetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		resetPassword = new ResetPasswordBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del form di login
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//utilizzo il bean forgotPassword per controllare l`esistenza dell`utente nel database e successivamente mandare un e-mail col codice di reset password
		if(resetPassword.updatePassword(email,password))
		{
			//cambio password effettuato
			
			//distruggo la sessione per non causare conflitti
			HttpSession session = request.getSession(false);
			session.invalidate();
		   
			//redirect alla pagina jsp di login
			response.sendRedirect("pages/login.jsp?res=1");
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("resetPasswordUpdate");
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
