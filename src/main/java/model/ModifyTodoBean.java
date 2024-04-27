package model;

public class ModifyTodoBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public ModifyTodoBean() {
		super();
		theDAO = new DAO();
	}
	
	public boolean modifyTodo(int id_todo, String username,int id_lista, String titolo, String descrizione)
	{
		boolean check;
		
		Utente user = new Utente(username,true);
		Todo todo = new Todo(id_todo,titolo,descrizione);
		//mando l`id lista al dao che provvederà alla rimozione della todo interessata in seguito a un controllo di appartenenza della todo tramite username e id_lista e successivamente tra id_todo e id_lista
		check = theDAO.modifyTodo(id_lista,user,todo);
		
		return check;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
