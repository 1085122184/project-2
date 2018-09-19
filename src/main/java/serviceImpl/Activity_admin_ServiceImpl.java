package serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_admin;
import mapper.Activity_admin_Mapper;
import service.Activity_admin_Service;

@Service("Activity_admin_ServiceImpl")
public class Activity_admin_ServiceImpl extends Basic_ServiceImpl<Activity_admin> implements Activity_admin_Service{
@Resource(name="Activity_admin_Mapper")
Activity_admin_Mapper mapper;

}
