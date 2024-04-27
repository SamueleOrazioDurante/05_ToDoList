package model;

public class Todo{
	
	private int id;
	private String titolo;
	private String descrizione;
	private Boolean isDone;
	
	public Todo(int id, String titolo, String descrizione, Boolean isDone) {
		super();
		this.id = id;
		this.titolo = titolo;
		this.descrizione = descrizione;
		this.isDone = isDone;
	}
	
	public Todo(String titolo, String descrizione, Boolean isDone) {
		super();
		this.titolo = titolo;
		this.descrizione = descrizione;
		this.isDone = isDone;
	}
	
	public Todo(int id, String titolo, String descrizione) {
		super();
		this.id = id;
		this.titolo = titolo;
		this.descrizione = descrizione;
	}
	
	public Todo(int id) {
		super();
		this.id = id;
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

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Boolean getIsDone() {
		return isDone;
	}

	public void setIsDone(Boolean isDone) {
		this.isDone = isDone;
	}
	
	public String toString(){
		return "("+this.getId()+","+this.getTitolo()+","+this.getDescrizione()+","+this.getIsDone()+")";
				
	}
	
}