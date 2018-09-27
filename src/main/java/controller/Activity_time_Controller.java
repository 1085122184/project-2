package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Activity_time;
import service.Activity_Service;
import service.Activity_time_Service;
import utils.SearchInfo;
import utils.SearchInfo_activity_id;

@Controller
@RequestMapping("Activity_time")
public class Activity_time_Controller extends Basic_Controller<Activity_time>{
@Resource(name="Activity_time_ServiceImpl")
Activity_time_Service service;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;
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
