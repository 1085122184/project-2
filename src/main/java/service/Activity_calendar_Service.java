package service;

import java.util.List;

import entity.Activity_calendar;
import entity.Activity_time;

public interface Activity_calendar_Service extends Basic_Service<Activity_calendar>{
	public List<Activity_calendar> selectAll();
	public int selectMaxId();
	public List<Activity_calendar> selectDesc();
	public List<Activity_calendar> selectcal();
	public List<Activity_time> selectByDateinfo(String dateinfo);
	public List<Activity_time> selectGROUP(String dateinfo);
	
}
