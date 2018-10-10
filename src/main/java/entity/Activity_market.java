package entity;

import java.io.Serializable;

public class Activity_market implements Serializable{
	int id;
	int activity_id;
	int operator_id;
	String date;
	String info;
	String json;
	String comments;
	String name;
	int level;
    String stuinfo;	
    public static String[] levels={"A","B","C"};
	public String getLevel_name() {
		return levels[level];
	}
	public String getStuinfo() {
		return stuinfo;
	}
	public void setStuinfo(String stuinfo) {
		this.stuinfo = stuinfo;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(int activity_id) {
		this.activity_id = activity_id;
	}
	public int getOperator_id() {
		return operator_id;
	}
	public void setOperator_id(int operator_id) {
		this.operator_id = operator_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}
