package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Activity_admin;
import service.Activity_admin_Service;
import utils.SearchInfo;

@Controller
@RequestMapping("Activity_admin")
public class Activity_admin_Controller extends Basic_Controller<Activity_admin>{
@Resource(name="Activity_admin_ServiceImpl")
Activity_admin_Service service;

Activity_admin admin;


@Override
	public void index(SearchInfo info, ModelMap m, HttpServletRequest req) throws Exception {
	Integer select=info.getSelect();
	String txt=info.getTxt();
	if(select==null)select=0;
	if(txt==null)txt="";
		String where="";
		if(txt!=null&&txt.length()>0){
			switch (select) {
			case 1:
				where=" where type ="+txt+" ";
				break;
			case 2:
				where=" where power ="+txt+" ";
				break;
			case 3:
				where=" where status ="+txt+" ";
				break;
			default:
				where=" where name like '%"+txt+"%'";
			}
		}
	    info.setWhere(where);
	    m.put("select",select);
	    m.put("txt",select==0?"'"+txt+"'":txt);
		m.put("count", service.count(info));
		m.put("page",info.getPageno());
		super.index(info, m, req);
	}

@Override
	public String add(ModelMap m, HttpServletRequest req) throws Exception {
		m.put("sublist", service.select(new SearchInfo()));
		m.put("powers", admin.powers);
		m.put("types", admin.types);
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
