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
import entity.Activity_checkwork;
import entity.Activity_time;
import entity.Activity_user;
import service.Activity_Service;
import service.Activity_checkwork_Service;
import service.Activity_time_Service;
import service.Activity_user_Service;
import utils.JsonInfo;
import utils.SearchInfo;
import utils.SearchInfo_activity_id;

@Controller
@RequestMapping("Activity_time")
public class Activity_time_Controller extends Basic_Controller<Activity_time>{
@Resource(name="Activity_time_ServiceImpl")
Activity_time_Service service;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;
@Resource(name="Activity_user_ServiceImpl")
Activity_user_Service uservice;
@Resource(name="Activity_checkwork_ServiceImpl")
Activity_checkwork_Service chservice;
Activity_time at;

@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
		Activity_time a = new Activity_time();
		SearchInfo_activity_id infoid = new SearchInfo_activity_id();
		infoid.setPageno(info.getPageno());
		m.put("page",infoid.getPageno());
		if(req.getParameter("activity_id")==null) {
			int activity_id=aservice.selectMaxId();
			int id = aservice.selectMaxId();
			a.setActivity_id(activity_id);
			infoid.setActivity_id(activity_id);
		    m.put("list1", service.selectByactivity_id(infoid));
		    m.put("activity_name", aservice.selectById(id).get(0));
		    m.put("count", service.countByactivity_id(activity_id));
		    m.put("activity_id", activity_id);
		}else {
			int activity_id = Integer.valueOf(req.getParameter("activity_id"));
			int id = Integer.valueOf(req.getParameter("activity_id")); 
			a.setActivity_id(activity_id);
			infoid.setActivity_id(activity_id);
			m.put("activity_id", activity_id);
			m.put("activity_name", aservice.selectById(id).get(0));
		    m.put("count", service.countByactivity_id(activity_id));
			m.put("list1", service.selectByactivity_id(infoid));
		}
		m.put("activity", aservice.selectDesc());
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
		m.put("status",at.statuses);
		m.put("activity_id", req.getParameter("activity_id"));
		int id = Integer.valueOf(req.getParameter("activity_id"));
		m.put("date",service.selectByactivityId(id));
		
		
		return super.add(m, req);
	}
      @RequestMapping("insert_json1")
    	public @ResponseBody JsonInfo insert_json1(Activity_time o, ModelMap m, HttpServletRequest req){
    	     int id=o.getActivity_id();
             String date=o.getDateinfo();
             String ids = aservice.selectIds(id).get(0).getIds();
             if(ids.length()>1) {
            	 SearchInfo info = new SearchInfo();
         		 info.setWhere(" where id in("+ids+")");
         		 List<Activity_user> alist = uservice.selectIds(info);
         		 Activity_checkwork ch = new Activity_checkwork();
         		 Date d = new Date();
                 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                 String lastdate = sdf.format(d);
                 ch.setLastdate(lastdate);
                 ch.setDate(date);
                 ch.setActivity_id(id);
         		 for(int i=0;i<alist.size();i++) {
         			ch.setUser_id(alist.get(i).getId());
         			chservice.insert(ch);
         		 }
         		 service.insert(o);
         		return new JsonInfo(1, "");
             }else if(ids.length()==1){
            	 System.out.println(111);
            	 return new JsonInfo(0, "");
             }
			return null;
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

}
