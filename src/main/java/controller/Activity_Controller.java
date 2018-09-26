package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Activity;
import service.Activity_Service;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity")
public class Activity_Controller extends Basic_Controller<Activity>{
@Resource(name="Activity_ServiceImpl")
Activity_Service service;

Activity a;


@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
		m.put("types", a.types);
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
   @RequestMapping("activityinfo")
   public String activityinfo(SearchInfo info,int id, ModelMap m, HttpServletRequest req) {
	   m.put("time",service.timeinfo(id).get(0));
	   m.put("group", service.groupinfo(id));
	   m.put("user",service.userinfo());
	   return "Activity/info";
   }
   
   

}
