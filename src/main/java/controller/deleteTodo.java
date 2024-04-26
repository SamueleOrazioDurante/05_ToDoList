package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DeleteTodoBean;
import model.UsersLists;
import model.Lista;

/**
 * Servlet implementation class addLista
 */
@WebServlet("/deleteTodo")
public class deleteTodo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati delle liste
    private DeleteTodoBean deleteTodo;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteTodo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		deleteTodo = new DeleteTodoBean();
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
		
		//richiamo il metodo del Bean che procederà a chiedere al dao di eliminare l`oggetto lista insieme a tutte le sue todos
		//controllo che tutto sia andato a buon fine
		if(deleteTodo.deleteTodo(id_todo, username))
		{	
			UsersLists usersLists = deleteTodo.fetchUsersLists(username);
			session.setAttribute("usersLists", usersLists);
			System.out.println(usersLists.toString());
			
			//redirect alla pagina jsp della lista
			response.sendRedirect("pages/lista.jsp?id="+id_lista);
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("deleteTodo");
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
