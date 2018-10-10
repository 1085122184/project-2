package controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Activity;
import entity.Activity_college;
import entity.Activity_usergroup;
import service.Activity_Service;
import service.Activity_college_Service;
import service.Activity_school_Service;
import service.Activity_user_Service;
import service.Activity_usergroup_Service;
import utils.JsonInfo;
import utils.SearchInfo;
import utils.SearchInfo_3;

@Controller
@RequestMapping("Activity_usergroup")
public class Activity_usergroup_Controller extends Basic_Controller<Activity_usergroup>{
@Resource(name="Activity_usergroup_ServiceImpl")
Activity_usergroup_Service service;
@Resource(name="Activity_school_ServiceImpl")
Activity_school_Service sservice;
@Resource(name="Activity_college_ServiceImpl")
Activity_college_Service scervice;
@Resource(name="Activity_user_ServiceImpl")
Activity_user_Service uservice;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;


Activity_usergroup usergroup;

@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
//	Integer select=info.getSelect();
//	String txt=info.getTxt();
//	if(select==null)select=0;
//	if(txt==null)txt="";
//		String where="";
//		if(txt!=null&&txt.length()>0){
//			switch (select) {
//			case 1:
//				where=" where type ="+txt+" ";
//				break;
//			case 2:
//				where=" where power ="+txt+" ";
//				break;
//			case 3:
//				where=" where status ="+txt+" ";
//				break;
//			default:
//				where=" where name like '%"+txt+"%'";
//			}
//		}
//	    info.setWhere(where);
//	    m.put("select",select);
//	    m.put("txt",select==0?"'"+txt+"'":txt);
	   
		m.put("count", service.countByid(info));
		m.put("page",info.getPageno());
		m.put("list1", service.selectByActivity_id(info));
		m.put("activity_id", info.getNowid());
		super.index(info, m, req);
	}
@Override
	public List<Activity_usergroup> index_json(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		return super.index_json(info, m, req);
	}
@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
	
	    int activity_id=Integer.valueOf(req.getParameter("activity_id"));
	    if(service.select(new SearchInfo()).size()==0) {
	    	SearchInfo info = new SearchInfo();
	    	info.setWhere("where activity_id="+activity_id+"");
	    	m.put("user1",service.selectids(info));
	    	info.setWhere("where activity_id<>"+activity_id+"");
	    	m.put("user2", service.selectids(info));
	    }else {
	    SearchInfo_3 info3 = new SearchInfo_3();
	    SearchInfo info = new SearchInfo();
	    String ids = service.selectAllids().get(0).getIds();
		info.setWhere(" where u.id in ("+ids+") and activity_id="+activity_id+"");
        info3.setWhere(" where u.id not in ("+ids+") and activity_id="+activity_id+"");
		m.put("user1", service.selectnotids(info3));
		m.put("user2", service.selectids(info));
	    }
		m.put("activity",aservice.select(new SearchInfo()));
		Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = sdf.format(d);
        m.put("date",date);
        m.put("activity_id", activity_id);
		return super.add(m, req);
	}
//@Override
//	public JsonInfo insert_json(Activity_usergroup o, ModelMap m, HttpServletRequest req) throws Exception {
//	    service.insert(o);
//	    int id=o.getActivity_id();
//	    int group_id=service.Maxid();
//	    Activity a = new Activity();
//	    a.setGroup_id(","+group_id+"");
//	    a.setId(id);
//	    System.out.println(a.getGroup_id());
//	    service.updateids(a);
//		return super.insert_json(o, m, req);
//	}
@RequestMapping("myinsert_json")
public @ResponseBody JsonInfo myinsert_json(Activity_usergroup o, ModelMap m, HttpServletRequest req) {
	service.insert(o);
    int id=o.getActivity_id();
    int group_id=service.Maxid();
    Activity a = new Activity();
    a.setGroup_id(","+group_id+"");
    a.setId(id);
    service.updateids(a);
    String ids = o.getIds();
    a.setIds(ids);
    a.setGroup_id2(group_id);
    if(ids!="") {
   	 service.updateuserid(a);
   	 service.updateuseridto0(a);
   }else {
   	service.updateuseridto02(a);
   }
	return new JsonInfo(1, "");
}
   @Override
	public JsonInfo update_json(Activity_usergroup o, ModelMap m, HttpServletRequest req) throws Exception {
	    Activity a = new Activity();
	    int group_id = Integer.valueOf(req.getParameter("id")); 
	    a.setId(group_id);
	    String ids = o.getIds();
	    a.setIds(ids);
	    a.setGroup_id2(group_id);
	    if(ids!="") {
	    	 service.updateuserid(a);
	    	 service.updateuseridto0(a);
	    }else {
	    	service.updateuseridto02(a);
	    }
	    
		return super.update_json(o, m, req);
	}
   @Override
	public String edit(int id, ModelMap m, HttpServletRequest req) throws Exception {
		m.put("subinfo", service.selectById(id).get(0));
		return super.edit(id, m, req);
	}

   @Override
	public String delete(int id, ModelMap m, HttpServletRequest req) throws Exception {
	   return super.delete(id, m, req);
	}
   
    @RequestMapping("adduser")
    public String select(ModelMap m,SearchInfo_3 info3,SearchInfo info,int id,HttpServletRequest req){
    	int activity_id=Integer.valueOf(req.getParameter("activity_id"));
    	m.put("id",id);
		String ids = service.selectAllids().get(0).getIds();
		if(ids!=""&&ids.length()!=0) {
			info.setWhere(" where u.id in ("+ids+") and u.group_id="+id+" and activity_id="+activity_id+"");
	        info3.setWhere(" where u.id not in ("+ids+") and activity_id="+activity_id+"");
			m.put("user1", service.selectnotids(info3));
			m.put("user2", service.selectids(info));
		}else{
			info.setWhere(" where u.group_id="+id+" and activity_id="+activity_id+"");
	        info3.setWhere(" where activity_id="+activity_id+"");
			m.put("user1", service.selectnotids(info3));
			m.put("user2", service.selectids(info));
		}
		
    	return "Activity_usergroup/userlist";
    }
    @RequestMapping("userlist")
    public void userlist(ModelMap m,SearchInfo_3 info3){
	    m.put("count", uservice.count(new SearchInfo()));
	    m.put("page", info3.getPageno());
		m.put("user", uservice.select_3(info3));
    }
    @RequestMapping("allindex")
    public String allindex(SearchInfo info, ModelMap m, HttpServletRequest req) {
    	if(info.getNowid()==null) {
    		int nowid = aservice.selectMaxId();
    		info.setNowid(nowid);
    		m.put("activity_id",nowid); //记录当前id
    		m.put("activity_name", aservice.selectById(nowid).get(0));
    	}
    	else {
    		m.put("activity_id",info.getNowid()); //记录当前id
    		m.put("activity_name", aservice.selectById(info.getNowid()).get(0));
    	}
    	m.put("myid",req.getParameter("myid"));//iframe按钮标记
    	m.put("activity", aservice.selectDesc());
    	return "Activity_usergroup/allindex";
    }
    
    @RequestMapping("mark")
    public String mark(int id,ModelMap m) {
    	m.put("point", service.selectById(id));
    	return "Activity_usergroup/mark";
    }
    @RequestMapping("updatemark")
    public @ResponseBody JsonInfo updatemark(Activity_usergroup a, ModelMap m, HttpServletRequest req){
        service.updatemark(a);
    	return new JsonInfo(1, "");
	}
}
