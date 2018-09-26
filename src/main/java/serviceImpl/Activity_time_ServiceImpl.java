package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_time;
import mapper.Activity_school_Mapper;
import mapper.Activity_time_Mapper;
import service.Activity_time_Service;
import utils.SearchInfo;
import utils.SearchInfo_activity_id;

@Service("Activity_time_ServiceImpl")
public class Activity_time_ServiceImpl extends Basic_ServiceImpl<Activity_time> implements Activity_time_Service{
	@Resource(name="Activity_time_Mapper")
	Activity_time_Mapper mapper;

	public List<Activity_time> selectByactivityId(int id) { 
		// TODO Auto-generated method stub
		return mapper.selectByactivityId(id);
	}

	public List<Activity_time> selectByactivity_id(SearchInfo_activity_id infoid) {
		// TODO Auto-generated method stub
		return mapper.selectByactivity_id(infoid);
	}

	public int countByactivity_id(int activity_id) {
		// TODO Auto-generated method stub
		return mapper.countByactivity_id(activity_id);
	}
}
