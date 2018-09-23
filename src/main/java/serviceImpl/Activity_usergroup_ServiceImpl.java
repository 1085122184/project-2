package serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_usergroup;
import mapper.Activity_usergroup_Mapper;
import service.Activity_usergroup_Service;

@Service("Activity_usergroup_ServiceImpl")
public class Activity_usergroup_ServiceImpl extends Basic_ServiceImpl<Activity_usergroup> implements Activity_usergroup_Service{
@Resource(name="Activity_usergroup_Mapper")
Activity_usergroup_Mapper mapper;

}
