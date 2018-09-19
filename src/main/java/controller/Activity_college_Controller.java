package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Activity_college;
import service.Activity_college_Service;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_college")
public class Activity_college_Controller extends Basic_Controller<Activity_college>{
@Resource(name="Activity_college_ServiceImpl")
Activity_college_Service service;


@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
		return super.add(m, req);
	}
@Override
	public String addid(ModelMap m, HttpServletRequest req, int school_id) throws Exception {
	System.out.println(school_id);
	    m.put("sublist", service.select(new SearchInfo()));
	    m.put("schoolid", school_id);
		return super.addid(m, req, school_id);
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
