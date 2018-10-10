package service;

import java.util.List;

import entity.Activity_market;
import utils.SearchInfo;

public interface Activity_market_Service extends Basic_Service<Activity_market>{
	public List<Activity_market> selectAll();
	public int selectMaxId();
	public List<Activity_market> selectDesc();
	
	
	
	public List<Activity_market> selectByAid(Activity_market am);
}
