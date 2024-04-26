package model;

public class DeleteListaBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public DeleteListaBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean deleteLista(int id_lista, String username)
	{
		boolean check;
		
		Utente user = new Utente(username,true);
		//mando l`id lista al dao che provvederà alla rimozione della lista insieme ad ogni todo collegata ad essa
		check = theDAO.deleteLista(id_lista,user);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
