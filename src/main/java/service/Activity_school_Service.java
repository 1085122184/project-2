package service;

import java.util.List;

import entity.Activity_school;

public interface Activity_school_Service extends Basic_Service<Activity_school>{
	public List<Activity_school> selectAll();
	
}
