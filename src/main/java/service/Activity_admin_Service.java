package service;

import java.util.List;

import entity.Activity_admin;

public interface Activity_admin_Service extends Basic_Service<Activity_admin>{
	public List<Activity_admin> login(Activity_admin ad);

}
