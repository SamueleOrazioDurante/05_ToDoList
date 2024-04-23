package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;	

import model.SignupBean;


/**
 * Servlet implementation class login
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati della registrazione
    private SignupBean signup;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		signup = new SignupBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del form di login
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//utilizzo il bean registrazione per inserire i dati nel database
		if(signup.addUser(username,email,password))
		{
			//ALERT REGISTRAZION ESEGUITA CON SUCCESSO
			//rimando alla pagina jsp login
			response.sendRedirect("pages/login.jsp?reg=1");
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("signup");
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
