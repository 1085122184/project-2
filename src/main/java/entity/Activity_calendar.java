package entity;

import java.io.Serializable;

public class Activity_calendar implements Serializable{
	String title;
	String start;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	
	
	
}
