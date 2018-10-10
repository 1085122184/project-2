package service;

import java.util.List;

import entity.Activity;
import entity.Activity_user;
import utils.SearchInfo;
import utils.SearchInfo_3;

public interface Activity_user_Service extends Basic_Service<Activity_user>{
	public List<Activity_user> select_3(SearchInfo_3 info3);
	public List<Activity_user> selectAll();
	public List<Activity_user> selectByActivityId(SearchInfo info);
	public int countByid(SearchInfo info);
	public List<Activity_user> selectIds(SearchInfo info);
}
