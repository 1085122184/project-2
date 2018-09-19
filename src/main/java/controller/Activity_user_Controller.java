package controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Activity_college;
import entity.Activity_user;
import service.Activity_college_Service;
import service.Activity_school_Service;
import service.Activity_user_Service;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_user")
public class Activity_user_Controller extends Basic_Controller<Activity_user>{
@Resource(name="Activity_user_ServiceImpl")
Activity_user_Service service;
@Resource(name="Activity_school_ServiceImpl")
Activity_school_Service sservice;
@Resource(name="Activity_college_ServiceImpl")
Activity_college_Service scervice;
Activity_user user;


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
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
	    m.put("school",sservice.selectAll());
		m.put("sublist", service.select(new SearchInfo()));
		m.put("sex", user.sexs);
		m.put("type",user.types);
		m.put("ylevel",user.ylevels);
		m.put("glevel",user.glevels);
		m.put("slevel",user.slevels);
		m.put("status",user.statuses);
		Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = sdf.format(d);
        m.put("date",date);
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
   
    @RequestMapping("select")
    public @ResponseBody List<Activity_college> select(int school_id){
        
    	return scervice.selectBysid(school_id);
    }

}