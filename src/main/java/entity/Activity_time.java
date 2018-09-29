package entity;

import java.io.Serializable;

public class Activity_time implements Serializable{
	int id;
	int activity_id;
	String dateinfo;
	String time1;
	String time2;
	String time3;
	String time4;
	String time5;
	String time6;
	String roominfo;
	int operator_id;
	int status;
	String comments;
	String aname;
	String ids;
		
	public static String[] statuses = {"ÔÝ¶¨","È·¶¨"};
	
	public String getStatus_name() {
		return statuses[status];
	}
	
	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
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
	
	public String getDateinfo() {
		return dateinfo;
	}
	public void setDateinfo(String dateinfo) {
		this.dateinfo = dateinfo;
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public String getTime3() {
		return time3;
	}
	public void setTime3(String time3) {
		this.time3 = time3;
	}
	public String getTime4() {
		return time4;
	}
	public void setTime4(String time4) {
		this.time4 = time4;
	}
	public String getTime5() {
		return time5;
	}
	public void setTime5(String time5) {
		this.time5 = time5;
	}
	public String getTime6() {
		return time6;
	}
	public void setTime6(String time6) {
		this.time6 = time6;
	}
	public String getRoominfo() {
		return roominfo;
	}
	public void setRoominfo(String roominfo) {
		this.roominfo = roominfo;
	}
	public int getOperator_id() {
		return operator_id;
	}
	public void setOperator_id(int operator_id) {
		this.operator_id = operator_id;
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

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}
	
	
	
}
