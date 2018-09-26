package service;

import java.util.List;

import entity.Activity;
import entity.Activity_user;
import utils.SearchInfo_3;

public interface Activity_Service extends Basic_Service<Activity>{
	public List<Activity> groupinfo(int id);
	public List<Activity> timeinfo(int id);
	public List<Activity> userinfo();
	public int selectMaxId();
	public List<Activity> selectDesc();
	
}
