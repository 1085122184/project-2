package utils;

public class SearchInfo {
	private int max = 8;
	private Integer pageno = 1;
	private String limit = " limit " + (pageno - 1) * max + "," + max;
    private Integer select;
    private Integer nowid;
    
    
	public Integer getNowid() {
		return nowid;
	}

	public void setNowid(Integer nowid) {
		this.nowid = nowid;
	}

	public void setMax(int max) {
		this.max = max;
	}

	public Integer getSelect() {
		return select;
	}

	public void setSelect(Integer select) {
		this.select = select;
	}

	public Integer getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		if (pageno < 1)
			pageno = 1;
		this.pageno = pageno;
		limit = " limit " + (pageno - 1) * max + "," + max;
	}

	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
	}


	String where="";
	String txt="";

	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		
		if(txt==null||txt=="") {
			where=" where status=0 ";
		}else {
			this.txt = txt;
			where=" where fullname like '%"+txt+"%' ";
		}
	}
	
	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

	public Integer getNext() {
		return pageno+1;
	}
	
	public Integer getPrev() {
		return pageno>1?pageno-1:1;
	}

}
