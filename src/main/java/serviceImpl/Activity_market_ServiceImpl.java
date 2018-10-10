package serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import entity.Activity_market;
import mapper.Activity_market_Mapper;
import service.Activity_market_Service;
import utils.SearchInfo;

@Service("Activity_market_ServiceImpl")
public class Activity_market_ServiceImpl extends Basic_ServiceImpl<Activity_market> implements Activity_market_Service{
@Resource(name="Activity_market_Mapper")
Activity_market_Mapper mapper;

public List<Activity_market> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}

public int selectMaxId() {
	// TODO Auto-generated method stub
	return mapper.selectMaxId();
}

public List<Activity_market> selectDesc() {
	// TODO Auto-generated method stub
	return mapper.selectDesc();
}

public List<Activity_market> selectByAid(Activity_market am) {
	// TODO Auto-generated method stub
	return mapper.selectByAid(am);
}





}
