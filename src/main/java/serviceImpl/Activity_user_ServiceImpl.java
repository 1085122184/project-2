package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_user;
import mapper.Activity_user_Mapper;
import service.Activity_user_Service;
import utils.SearchInfo;
import utils.SearchInfo_3;

@Service("Activity_user_ServiceImpl")
public class Activity_user_ServiceImpl extends Basic_ServiceImpl<Activity_user> implements Activity_user_Service{
@Resource(name="Activity_user_Mapper")
Activity_user_Mapper mapper;

public List<Activity_user> select_3(SearchInfo_3 info3) {
	// TODO Auto-generated method stub
	return mapper.select_3(info3);
}

public List<Activity_user> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public List<Activity_user> selectByActivityId(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.selectByActivityId(info);
}

public int countByid(SearchInfo info) {
	// TODO Auto-generated method stub
	return mapper.countByid(info);
}

}
