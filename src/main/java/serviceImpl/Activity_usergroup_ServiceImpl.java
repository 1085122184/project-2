package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import entity.Activity;
import entity.Activity_user;
import entity.Activity_usergroup;
import mapper.Activity_usergroup_Mapper;
import service.Activity_usergroup_Service;
import utils.SearchInfo;
import utils.SearchInfo_3;

@Service("Activity_usergroup_ServiceImpl")
public class Activity_usergroup_ServiceImpl extends Basic_ServiceImpl<Activity_usergroup> implements Activity_usergroup_Service{
@Resource(name="Activity_usergroup_Mapper")
Activity_usergroup_Mapper mapper;

public List<Activity_user> selectids(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.selectids(info);
}

public List<Activity_user> selectnotids(SearchInfo_3 info3) {
	// TODO Auto-generated method stub
	return mapper.selectnotids(info3);
}

public List<Activity_usergroup> selectAllids() {
	// TODO Auto-generated method stub
	return mapper.selectAllids();
}

public void updateids(Activity a) {
	mapper.updateids(a);
	
}

public void updateuserid(Activity a) {
	mapper.updateuserid(a);
	
}

public void updateuseridto0(Activity a) {
	mapper.updateuseridto0(a);
	
}

public List<Activity_usergroup> selectByActivity_id(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.selectByActivity_id(info);
}

public int countByid(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.countByid(info);
}

public void updateuseridto02(Activity a) {
	mapper.updateuseridto02(a);
	
}

public void updatestudentids(Activity a) {
	mapper.updatestudentids(a);
	
}

public void updatemark(Activity_usergroup a) {
	mapper.updatemark(a);
	
}

}
