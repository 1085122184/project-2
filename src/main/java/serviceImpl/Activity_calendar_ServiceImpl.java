package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_calendar;
import entity.Activity_time;
import mapper.Activity_calendar_Mapper;
import service.Activity_calendar_Service;

@Service("Activity_calendar_ServiceImpl")
public class Activity_calendar_ServiceImpl extends Basic_ServiceImpl<Activity_calendar> implements Activity_calendar_Service{
@Resource(name="Activity_calendar_Mapper")
Activity_calendar_Mapper mapper;

public List<Activity_calendar> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public int selectMaxId() {
	// TODO Auto-generated method stub
	return mapper.selectMaxId();
}

public List<Activity_calendar> selectDesc() {
	// TODO Auto-generated method stub
	return mapper.selectDesc();
}

public List<Activity_calendar> selectcal() {
	// TODO Auto-generated method stub
	return mapper.selectcal();
}

public List<Activity_time> selectByDateinfo(String dateinfo) {
	// TODO Auto-generated method stub
	return mapper.selectByDateinfo(dateinfo);
}

public List<Activity_time> selectGROUP(String dateinfo) {
	// TODO Auto-generated method stub
	return mapper.selectGROUP(dateinfo);
}




}
