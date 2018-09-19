package serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_user;
import mapper.Activity_user_Mapper;
import service.Activity_user_Service;

@Service("Activity_user_ServiceImpl")
public class Activity_user_ServiceImpl extends Basic_ServiceImpl<Activity_user> implements Activity_user_Service{
@Resource(name="Activity_user_Mapper")
Activity_user_Mapper mapper;

}
