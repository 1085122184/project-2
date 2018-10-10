package service;

import java.util.List;

import entity.Activity_college;
import entity.Activity_market;
import utils.SearchInfo;

public interface Activity_college_Service extends Basic_Service<Activity_college>{

	public List<Activity_college> selectAll();
	public List<Activity_college> selectBysid(int school_id);
	public List<Activity_college> selectBySchoolId(SearchInfo info);
	public int countByid(SearchInfo info);
}
