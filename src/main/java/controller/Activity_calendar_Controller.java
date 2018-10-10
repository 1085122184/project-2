package controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.type.TypeReference;

import entity.Activity_calendar;
import service.Activity_Service;
import service.Activity_calendar_Service;
import utils.JsonUtil;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_calendar")
public class Activity_calendar_Controller extends Basic_Controller<Activity_calendar>{
@Resource(name="Activity_calendar_ServiceImpl")
Activity_calendar_Service service;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;
@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		m.put("list1", JsonUtil.toString(service.selectcal()));
		super.index(info, m, req);
	}
	
	@RequestMapping("info")
	public String select_json(SearchInfo info, ModelMap m, HttpServletRequest req){
			String dateinfo = req.getParameter("dateinfo");
			m.put("dateinfo", dateinfo);
			m.put("info", JsonUtil.toString(service.selectByDateinfo(dateinfo)));
			if(service.selectByDateinfo(dateinfo).size()>0) {
				String activity_ids = service.selectGROUP(dateinfo).get(0).getIds();
		    	info.setWhere(" where activity_id in("+activity_ids+")");
		    	m.put("group", JsonUtil.toString(aservice.groupinfo(info)));
		    	m.put("user", JsonUtil.toString(aservice.userinfo()));
			}else {
				m.put("group", JsonUtil.toString(aservice.groupinfo(info)));
		    	m.put("user", JsonUtil.toString(aservice.userinfo()));
			}
            return "Activity_calendar/info"; 
	}
	
   @Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
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
