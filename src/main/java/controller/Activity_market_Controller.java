package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;

import entity.Activity_market;
import entity.Activity_user;
import entity.Json;
import service.Activity_Service;
import service.Activity_market_Service;
import utils.JsonInfo;
import utils.JsonUtil;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_market")
public class Activity_market_Controller extends Basic_Controller<Activity_market>{
@Resource(name="Activity_market_ServiceImpl")
Activity_market_Service service;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;
Activity_user u;
@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
	  int activity_id = Integer.valueOf(req.getParameter("activity_id"));
	  String date = req.getParameter("date");
      m.put("activity_id", activity_id);
      m.put("date", date);
      Activity_market am=new Activity_market();
      am.setActivity_id(activity_id);
      am.setDate(date);
      m.put("level", u.levels);
	  if(service.selectByAid(am).size()>0) {
		  m.put("list1", service.selectByAid(am).get(0));
		  System.out.println( service.selectByAid(am).size());
		List<Json> list =  (List<Json>) JsonUtil.toObject(service.selectByAid(am).get(0).getJson(),new TypeReference<List<Activity_market>>() {
			});
		  m.put("user",list);
	  }
	super.index(info, m, req);
	}
    @RequestMapping("add1")
	public String add1(ModelMap m, HttpServletRequest req){
	    m.put("level", u.levels);
	    
		return "Activity_market/edit";
	}

}
