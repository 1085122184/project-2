package entity;

import java.io.Serializable;

public class Activity_user implements Serializable{

	
	private int id;
	private int cid;
	private int sid;
	private int activity_id;
	private String name;
	private String niki;
	private String pass;
	private int sex;
	private int type;
	private String tel;
	private String qq;
	private String classinfo;
	private int ylevel;
	private int glevel;
	private int slevel;
	private int school_id;
	private int college_id;
	private int status;
	private String info;
	private String creatdate;
	private int operator_id;
	private String comments;
	private String cname;
	private String sname;
	int level;
	
	
	public static String[] sexs={"男","女"};
	public static String[] types={"学生","辅导员","临时"};
	public static String[] ylevels={"考研","考公","就业"};
	public static String[] glevels={"A","B","C","D","N","F"};
	public static String[] slevels={"未联系","已联系","预报名","已报名","终结"};
	public static String[] statuses={"正常","禁止","过期"};
	public static String[] levels={"A","B","C"};
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSex_name() {
		return sexs[sex];
	}
	public String getType_name() {
		return types[type];
	}
	public String getYlevel_name() {
		return ylevels[ylevel];
	}
	public String getLevel_name() {
		return levels[level];
	}
	public String getSlevel_name() {
		return slevels[slevel];
	}
	public String getGlevel_name() {
		return glevels[glevel];
	}
	public String getStatus_name() {
		return statuses[status];
	}
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(int activity_id) {
		this.activity_id = activity_id;
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
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
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
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getClassinfo() {
		return classinfo;
	}
	public void setClassinfo(String classinfo) {
		this.classinfo = classinfo;
	}
	public int getYlevel() {
		return ylevel;
	}
	public void setYlevel(int ylevel) {
		this.ylevel = ylevel;
	}
	public int getGlevel() {
		return glevel;
	}
	public void setGlevel(int glevel) {
		this.glevel = glevel;
	}
	public int getSlevel() {
		return slevel;
	}
	public void setSlevel(int slevel) {
		this.slevel = slevel;
	}
	public int getSchool_id() {
		return school_id;
	}
	public void setSchool_id(int school_id) {
		this.school_id = school_id;
	}
	public int getCollege_id() {
		return college_id;
	}
	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
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
