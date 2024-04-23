package model;

import java.util.Calendar;
import java.util.Date;

public class Data{
	private String data;
	
	public Data(){
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH);
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		
		this.data = year+"-"+month+"-"+day+"-";
	}
	
	public String getData(){
		return data;
	}
}
