package model;

import java.util.ArrayList;

public class Lista{

	private int id;
	private String titolo;
	private ArrayList<Todo> lista;
	
	public Lista(int id, String titolo,ArrayList<Todo> lista){
		this.id = id;
		this.titolo = titolo;
		this.lista = lista;
	}
		
	public Lista(int id, String titolo){
		this.id = id;
		this.titolo = titolo;
		lista = new ArrayList<Todo>();
	}
	
	public Lista(String titolo){
		this.titolo = titolo;
		lista = new ArrayList<Todo>();
	}
	
	public void addTodos(Todo todo){
		lista.add(todo);
	}
	
	public Todo getTodos(int i) {
		return lista.get(i);
	}
	
	public ArrayList<Todo> getAllTodos(){
		return lista;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
		
	public String toString(){
		String toString = "["+this.getId()+","+this.getTitolo();
		for (int i = 0; i < lista.size(); i++){
			  toString+=","+lista.get(i).toString();
		    }
		return toString+"]";
	}
	
}