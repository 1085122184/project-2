package service;

import java.util.List;

import entity.Activity;
import entity.Activity_user;
import entity.Activity_usergroup;
import utils.SearchInfo;
import utils.SearchInfo_3;

public interface Activity_usergroup_Service extends Basic_Service<Activity_usergroup>{
	public List<Activity_user> selectids(SearchInfo info);
	public List<Activity_user> selectnotids(SearchInfo_3 info3);
	public List<Activity_usergroup> selectAllids();
	public void updateids(Activity a);
	public void updateuserid(Activity a);
	public void updateuseridto0(Activity a);
	public List<Activity_usergroup> selectByActivity_id(SearchInfo info);
	public int countByid(SearchInfo info);
	public void updateuseridto02(Activity a);
	public void updatestudentids(Activity a);
	public void updatemark(Activity_usergroup a);
}
