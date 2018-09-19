package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_college;
import mapper.Activity_college_Mapper;
import service.Activity_college_Service;

@Service("Activity_college_ServiceImpl")
public class Activity_college_ServiceImpl extends Basic_ServiceImpl<Activity_college> implements Activity_college_Service{
@Resource(name="Activity_college_Mapper")
Activity_college_Mapper mapper;

public List<Activity_college> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public List<Activity_college> selectBysid(int school_id) {
	// TODO Auto-generated method stub
	return mapper.selectBysid(school_id);
}





}
