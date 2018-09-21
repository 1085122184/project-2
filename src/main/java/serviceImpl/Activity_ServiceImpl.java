package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity;
import mapper.Activity_Mapper;
import mapper.Activity_school_Mapper;
import service.Activity_Service;

@Service("Activity_ServiceImpl")
public class Activity_ServiceImpl extends Basic_ServiceImpl<Activity> implements Activity_Service{
	@Resource(name="Activity_Mapper")
	Activity_Mapper mapper;

}
