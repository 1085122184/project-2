package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_checkwork;
import entity.Activity_user;
import mapper.Activity_checkwork_Mapper;
import service.Activity_checkwork_Service;
import utils.SearchInfo;

@Service("Activity_checkwork_ServiceImpl")
public class Activity_checkwork_ServiceImpl extends Basic_ServiceImpl<Activity_checkwork> implements Activity_checkwork_Service{
@Resource(name="Activity_checkwork_Mapper")
Activity_checkwork_Mapper mapper;

public List<Activity_checkwork> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public List<Activity_checkwork> selectByUid(int user_id) {
	// TODO Auto-generated method stub
	return mapper.selectByUid(user_id);
}

public List<Activity_user> selectUser(int activity_id) {
	// TODO Auto-generated method stub
	return mapper.selectUser(activity_id);
}

public List<Activity_checkwork> selectU(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.selectU(info);
}




}
