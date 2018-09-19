package entity;

import java.io.Serializable;

public class Activity_admin implements Serializable{

	
	private int id;
	private String name;
	private String niki;
	private String pass;
	private int type;
	private String tel;
	private int power;
	private int status;
	private String comments;
	public static String[] powers={"操作员","管理员"};
	public static String[] statuses={"在职","离职"};
	public static String[] types={"讲师","其他"};
	public String getPower_name() {
		return powers[power];
	}
	public String getStatus_name() {
		return statuses[status];
	}
	public String getType_name() {
		return types[type];
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNiki() {
		return niki;
	}
	public void setNiki(String niki) {
		this.niki = niki;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}
