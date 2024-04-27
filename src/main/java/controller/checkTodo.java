package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CheckTodoBean;
import model.UsersLists;
import model.Lista;

/**
 * Servlet implementation class addLista
 */
@WebServlet("/checkTodo")
public class checkTodo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati delle liste
    private CheckTodoBean checkTodo;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkTodo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		checkTodo = new CheckTodoBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del js
		int id_todo = Integer.parseInt(request.getParameter("id_todo"));
		int id_lista = Integer.parseInt(request.getParameter("id_lista")); //parametro utilizzato per il redirect
		HttpSession session = request.getSession(false);
		String username = (String)session.getAttribute("username");
		
		//richiamo il metodo del Bean che procederà a chiedere al dao di modificare il valore check del todo
		//controllo che tutto sia andato a buon fine
		if(checkTodo.checkTodo(id_todo, username,id_lista))
		{	
			UsersLists usersLists = checkTodo.fetchUsersLists(username);
			session.setAttribute("usersLists", usersLists);
			System.out.println(usersLists.toString());
			
			//redirect alla pagina jsp della lista
			response.sendRedirect("pages/lista.jsp?id="+id_lista);
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("checkTodo");
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
