package service;

import java.util.List;

import entity.Activity_time;
import utils.SearchInfo;
import utils.SearchInfo_activity_id;

public interface Activity_time_Service extends Basic_Service<Activity_time>{
	
	public List<Activity_time> selectByactivityId(int id);
	public List<Activity_time> selectByactivity_id(SearchInfo_activity_id infoid);
	public int countByactivity_id(int activity_id);
}
