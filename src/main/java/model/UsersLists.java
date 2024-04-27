package model;

import java.util.ArrayList;
import java.util.Iterator;

public class UsersLists{
	
	private ArrayList<Lista> liste;
	
	public UsersLists(){
		liste = new ArrayList<Lista>();
	}
	
	public void addUsersLists(Lista lista) {
		liste.add(lista);
	}
	
	public Lista getUsersList(int i) {
		return liste.get(i);
	}
	
	public Lista getListaFromId(int id) {
		for (int i = 0;i<liste.size();i++) {
			if(liste.get(i).getId() == id) {
				return liste.get(i);
			}
		}
		return null;
	}
	
	public Todo getTodoFromId(int id_lista,int id_todo) {
		Lista lista = this.getListaFromId(id_lista);
		ArrayList<Todo> todos = lista.getAllTodos();
		
		for (int i = 0;i<todos.size();i++) {
			if(todos.get(i).getId() == id_todo) {
				return todos.get(i);
			}
		}
		return null;
	}
	
	public ArrayList<Lista> getAllUsersLists(){
		return liste;
	}
	
	public String toString(){
		String toString = "{";
		for (int i = 0; i < liste.size(); i++){
			  if(i!=0) {
				  toString+=",";
			  }
			  toString+=liste.get(i).toString();
		    }
		return toString+"}";
	}
}