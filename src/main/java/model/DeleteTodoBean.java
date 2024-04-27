package model;

public class DeleteTodoBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public DeleteTodoBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean deleteTodo(int id_todo, String username)
	{
		boolean check;
		
		Utente user = new Utente(username,true);
		//mando l`id todo al dao che provvederà alla rimozione della todo interessata in seguito a un controllo di appartenenza della todo stessa
		check = theDAO.deleteTodo(id_todo,user,true);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
