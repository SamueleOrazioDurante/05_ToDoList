package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DeleteListaBean;
import model.UsersLists;
import model.Lista;

/**
 * Servlet implementation class addLista
 */
public class deleteLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati delle liste
    private DeleteListaBean deleteLista;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		deleteLista = new DeleteListaBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del js
		int id_lista = Integer.parseInt(request.getParameter("id_lista"));
		HttpSession session = request.getSession(false);
		String username = (String)session.getAttribute("username");
		
		//richiamo il metodo del Bean che procederà a chiedere al dao di eliminare l`oggetto lista insieme a tutte le sue todos
		//controllo che tutto sia andato a buon fine
		if(deleteLista.deleteLista(id_lista, username))
		{	
			UsersLists usersLists = deleteLista.fetchUsersLists(username);
			session.setAttribute("usersLists", usersLists);
			System.out.println(usersLists.toString());
			//forward della richiesta alla pagina jsp principale
			request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			//lancio un eccezione in caso di errore che verrà gestita dalla pagina ErrorPage.jsp
			throw new ServletException("addLista");
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
