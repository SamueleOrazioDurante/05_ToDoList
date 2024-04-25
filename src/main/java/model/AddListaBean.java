package model;

public class AddListaBean implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private DAO theDAO;

	public AddListaBean() {
		super();
		theDAO = new DAO();
	}
	
	public Lista addLista(String titolo, String username)
	{
		int id = -1;
		
		Utente user = new Utente(username,true); //booleana usata per differenziare i costruttori
		Lista lista = new Lista(titolo);
		
		//recupero l`id dal DAO e lo inserisco dentro la lista che viene poi rimandata alla servlet che procedere con l`aggiornare l`arraylist di liste
		id = theDAO.addLista(lista,user);
		lista.setId(id);
		
		return lista;
	}
	
	public UsersLists fetchUsersLists(String username){
		return theDAO.fetchUsersLists(username);
	}
}
