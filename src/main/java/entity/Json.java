package entity;

import java.io.Serializable;

public class Json implements Serializable{

	String name;
	int level;
	String stuinfo;
	
	public String getStuinfo() {
		return stuinfo;
	}
	public void setStuinfo(String stuinfo) {
		this.stuinfo = stuinfo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}
