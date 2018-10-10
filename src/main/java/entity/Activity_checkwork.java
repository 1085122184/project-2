package entity;

import java.io.Serializable;

public class Activity_checkwork implements Serializable{
	private int id;
	private int activity_id;
	private int user_id;
	private int check1;
	private int check2;
	private int check3;
	private int operator_id;
	private String date;
	private String lastdate;
	private String comments;
	String uname;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public static String[] check1s={"---","正常","迟到","早退","请假","未到"};
	public static String[] check2s={"---","正常","迟到","早退","请假","未到"};
	public static String[] check3s={"---","正常","迟到","早退","请假","未到"};
	public String getCheck1_name() {
		return check1s[check1];
	}
	public String getCheck2_name() {
		return check2s[check2];
	}
	public String getCheck3_name() {
		return check3s[check3];
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
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCheck1() {
		return check1;
	}
	public void setCheck1(int check1) {
		this.check1 = check1;
	}
	public int getCheck2() {
		return check2;
	}
	public void setCheck2(int check2) {
		this.check2 = check2;
	}
	public int getCheck3() {
		return check3;
	}
	public void setCheck3(int check3) {
		this.check3 = check3;
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
	public String getLastdate() {
		return lastdate;
	}
	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}
