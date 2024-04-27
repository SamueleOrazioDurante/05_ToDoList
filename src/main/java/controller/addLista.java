package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AddListaBean;
import model.UsersLists;
import model.Lista;

/**
 * Servlet implementation class addLista
 */
public class addLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//bean usato per accedere ai dati delle liste
    private AddListaBean addLista;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// istanzio il bean di login
		addLista = new AddListaBean();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//prendo gli input del form di input lista
		String titolo = request.getParameter("titolo");
		System.out.print("partita");
		HttpSession session = request.getSession(false);
		String username = (String)session.getAttribute("username");
		//richiamo il metodo del Bean che procederà a creare un oggetto user e lista che passerà al DAO che si occuperà di aggiungerli ad database e a restituire l`id della lista
		Lista lista = addLista.addLista(titolo,username);
		
		//controllo che l`id sia presente
		if(lista.getId() != -1)
		{	
			UsersLists usersLists = addLista.fetchUsersLists(username);
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
