package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_school;
import mapper.Activity_school_Mapper;
import service.Activity_school_Service;

@Service("Activity_school_ServiceImpl")
public class Activity_school_ServiceImpl extends Basic_ServiceImpl<Activity_school> implements Activity_school_Service{
@Resource(name="Activity_school_Mapper")
Activity_school_Mapper mapper;

public List<Activity_school> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public int selectMaxId() {
	// TODO Auto-generated method stub
	return mapper.selectMaxId();
}

public List<Activity_school> selectDesc() {
	// TODO Auto-generated method stub
	return mapper.selectDesc();
}




}
