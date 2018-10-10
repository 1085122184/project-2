package service;

import java.util.List;

import entity.Activity;
import entity.Activity_user;
import entity.Group;
import entity.User;
import utils.SearchInfo;
import utils.SearchInfo_3;

public interface Activity_Service extends Basic_Service<Activity>{
	public List<Group> groupinfo(SearchInfo info);
	public List<Activity> timeinfo(int id);
	public List<User> userinfo();
	public int selectMaxId();
	public List<Activity> selectDesc();
	public List<Activity> selectIds(int id);
	
}
