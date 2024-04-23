package model;

import java.util.ArrayList;

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