package entity;

import java.io.Serializable;

public class Activity implements Serializable{
	int id;
	String courseinfo;
	String planinfo;
	String dateinfo;
	String school;
	String college;
	String name;
	int count;
	int classcount;
	int source_operator_id;
	int optiones;
	String attention;
	int type;
	int Inustructor_operator_id;
	String creatdate;
	int operator_id;
	int charge_operator_id;
	int status;
	String comments;
	String group_ids;
	String group_id;
	String uname;
	String auname;
	int uid;
	int auid;
	String start_date;
	String end_date;
	String time1;
	String time2;
	String time3;
	String time4;
	String time5;
	String time6;
	String roominfo;
	String ids;
	int group_id2;
	
	public static String[] types={"ÊµÑµ","Ðû½²","±ÈÈü"};
	public String getType_name() {
		return types[type];
	}
	
	
	
	
	
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getAuid() {
		return auid;
	}
	public void setAuid(int auid) {
		this.auid = auid;
	}
	public String getAuname() {
		return auname;
	}
	public void setAuname(String auname) {
		this.auname = auname;
	}
	public int getGroup_id2() {
		return group_id2;
	}
	public void setGroup_id2(int group_id2) {
		this.group_id2 = group_id2;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
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
	public String[] getGroupidlist() {
		if(group_ids.length()<1)return new String[0];
		return group_ids.split(",");
	}
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public String getGroup_ids() {
		return group_ids;
	}
	public void setGroup_ids(String group_ids) {
		this.group_ids = group_ids;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourseinfo() {
		return courseinfo;
	}
	public void setCourseinfo(String courseinfo) {
		this.courseinfo = courseinfo;
	}
	public String getPlaninfo() {
		return planinfo;
	}
	public void setPlaninfo(String planinfo) {
		this.planinfo = planinfo;
	}
	public String getDateinfo() {
		return dateinfo;
	}
	public void setDateinfo(String dateinfo) {
		this.dateinfo = dateinfo;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getClasscount() {
		return classcount;
	}
	public void setClasscount(int classcount) {
		this.classcount = classcount;
	}
	public int getSource_operator_id() {
		return source_operator_id;
	}
	public void setSource_operator_id(int source_operator_id) {
		this.source_operator_id = source_operator_id;
	}
	public int getOptiones() {
		return optiones;
	}
	public void setOptiones(int optiones) {
		this.optiones = optiones;
	}
	public String getAttention() {
		return attention;
	}
	public void setAttention(String attention) {
		this.attention = attention;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getInustructor_operator_id() {
		return Inustructor_operator_id;
	}
	public void setInustructor_operator_id(int inustructor_operator_id) {
		Inustructor_operator_id = inustructor_operator_id;
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
	public int getCharge_operator_id() {
		return charge_operator_id;
	}
	public void setCharge_operator_id(int charge_operator_id) {
		this.charge_operator_id = charge_operator_id;
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
