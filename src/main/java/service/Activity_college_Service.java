package service;

import java.util.List;

import entity.Activity_college;

public interface Activity_college_Service extends Basic_Service<Activity_college>{

	public List<Activity_college> selectAll();
	public List<Activity_college> selectBysid(int school_id);
}
