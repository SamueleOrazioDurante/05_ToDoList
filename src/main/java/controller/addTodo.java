package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AddTodoBean;
import model.UsersLists;
import model.Lista;

/**
 * Servlet implementation class addTodo
 */
@WebServlet("/addTodo")
public class addTodo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati delle liste
    private AddTodoBean addTodo;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addTodo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di addTodo
		addTodo = new AddTodoBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input della richiesta derivata dal js
		int id_lista = Integer.parseInt(request.getParameter("id_lista"));
		HttpSession session = request.getSession(false);
		//prendo l`attributo username che userò dopo per aggiornare l`arraylist di liste
		String username = (String)session.getAttribute("username"); 
		
		//richiamo il metodo del Bean che passerà al DAO l`id della lista e creerà una nuovo todo
		//controllo che l`inserimento sia stato effettuato
		if(addTodo.addTodo(id_lista))
		{	
			UsersLists usersLists = addTodo.fetchUsersLists(username);
			session.setAttribute("usersLists", usersLists);
			
			//redirect alla pagina jsp della lista
			response.sendRedirect("pages/lista.jsp?id="+id_lista);
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("addTodo");
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
