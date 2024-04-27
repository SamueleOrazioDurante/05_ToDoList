package model;

public class CheckTodoBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public CheckTodoBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean checkTodo(int id_todo, String username,int id_lista)
	{
		boolean check;
		
		Utente user = new Utente(username,true);
		Todo todo = new Todo(id_todo);
		//mando l`id lista al dao che provvederà alla update dello stato della check della todo interessata in seguito a un controllo di appartenenza della todo tramite username e id_lista e successivamente tra id_todo e id_lista
		check = theDAO.checkTodo(id_lista,user,todo);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
