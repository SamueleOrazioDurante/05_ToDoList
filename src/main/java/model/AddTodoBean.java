package model;

public class AddTodoBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public AddTodoBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean addTodo(int id_lista)
	{
		boolean check;
	
		//mando l`id lista al dao che provvederà all`aggiunta della todo nella lista corrispondente nel database
		check = theDAO.addTodo(id_lista);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
