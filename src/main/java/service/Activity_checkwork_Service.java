package service;

import java.util.List;

import entity.Activity_checkwork;
import entity.Activity_user;
import utils.SearchInfo;

public interface Activity_checkwork_Service extends Basic_Service<Activity_checkwork>{
	public List<Activity_checkwork> selectAll();
	public List<Activity_checkwork> selectByUid(int user_id);
	public List<Activity_user> selectUser(int activity_id);
	public List<Activity_checkwork> selectU(SearchInfo info);
	
}
