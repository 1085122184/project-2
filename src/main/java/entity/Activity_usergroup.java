package entity;

import java.io.Serializable;

public class Activity_usergroup implements Serializable{
	int id;
	String name;
	int activity_id;
	String ids;
	String project;
	String path;
	double point1;
	double point2;
	double point3;
	double point4;
	double point5;
	double point6;
	double point7;
	double point8;
	double point9;
	double point10;
	String creatdate;
	int operator_id;
	String comments;
	public String[] getIdlist() {
		if(ids.length()<1)return new String[0];
		return ids.split(",");
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
	public int getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(int activity_id) {
		this.activity_id = activity_id;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public double getPoint1() {
		return point1;
	}
	public void setPoint1(double point1) {
		this.point1 = point1;
	}
	public double getPoint2() {
		return point2;
	}
	public void setPoint2(double point2) {
		this.point2 = point2;
	}
	public double getPoint3() {
		return point3;
	}
	public void setPoint3(double point3) {
		this.point3 = point3;
	}
	public double getPoint4() {
		return point4;
	}
	public void setPoint4(double point4) {
		this.point4 = point4;
	}
	public double getPoint5() {
		return point5;
	}
	public void setPoint5(double point5) {
		this.point5 = point5;
	}
	public double getPoint6() {
		return point6;
	}
	public void setPoint6(double point6) {
		this.point6 = point6;
	}
	public double getPoint7() {
		return point7;
	}
	public void setPoint7(double point7) {
		this.point7 = point7;
	}
	public double getPoint8() {
		return point8;
	}
	public void setPoint8(double point8) {
		this.point8 = point8;
	}
	public double getPoint9() {
		return point9;
	}
	public void setPoint9(double point9) {
		this.point9 = point9;
	}
	public double getPoint10() {
		return point10;
	}
	public void setPoint10(double point10) {
		this.point10 = point10;
	}
	public String getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(String creatdate) {
		this.creatdate = creatdate;
	}
	public int getOperator_id() {
		return operator_id;
	}
	public void setOperator_id(int operator_id) {
		this.operator_id = operator_id;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}
