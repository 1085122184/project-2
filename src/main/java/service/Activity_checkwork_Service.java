package service;

import java.util.List;

import entity.Activity_checkwork;

public interface Activity_checkwork_Service extends Basic_Service<Activity_checkwork>{
	public List<Activity_checkwork> selectAll();
	
}
