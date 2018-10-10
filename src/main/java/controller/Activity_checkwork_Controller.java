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

import entity.Activity_checkwork;
import service.Activity_Service;
import service.Activity_checkwork_Service;
import utils.JsonInfo;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_checkwork")
public class Activity_checkwork_Controller extends Basic_Controller<Activity_checkwork>{
@Resource(name="Activity_checkwork_ServiceImpl")
Activity_checkwork_Service service;
@Resource(name="Activity_ServiceImpl")
Activity_Service aservice;
Activity_checkwork ac;

@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
	    int activity_id = Integer.valueOf(req.getParameter("activity_id"));
	    m.put("activity_id", activity_id);
	    m.put("activity_name", aservice.selectById(activity_id).get(0));
	    String date = req.getParameter("date");
	    info.setWhere(" where activity_id="+activity_id+"");
		m.put("count", service.count(info));
		
		info.setWhere(" where u.activity_id="+activity_id+"");
		m.put("page",info.getPageno());
		
		m.put("list1",service.selectU(info));
		m.put("check1", ac.check1s);
		m.put("check2", ac.check2s);
		m.put("check3", ac.check3s);
		m.put("date",req.getParameter("date"));
		m.put("activity", aservice.selectDesc());
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
		m.put("check1",ac.check1s);
		m.put("check2",ac.check2s);
		m.put("check3",ac.check3s);
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
   
    @Override
    	public JsonInfo insert_json(Activity_checkwork o, ModelMap m, HttpServletRequest req) throws Exception {
    	    Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String lastdate = sdf.format(d);
            o.setLastdate(lastdate);
    		return super.insert_json(o, m, req);
    	}
    
    
    @RequestMapping("updatecheck")
    public @ResponseBody List<Activity_checkwork> name(ModelMap m,HttpServletRequest req) {
    	int user_id = Integer.valueOf(req.getParameter("user_id"));
		return service.selectByUid(user_id);
	}
}
