package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_time;
import utils.SearchInfo;
import utils.SearchInfo_activity_id;

@Repository("Activity_time_Mapper")
public interface Activity_time_Mapper extends BaicsMapper{
    @Select("select * from activity_time ${where} ${limit}")
	public List<Activity_time> select(SearchInfo info);
    
    @Select("select * from activity_time where id=#{id}")
	public List<Activity_time> selectById(int id);
	
	@Select("select * from activity_time where activity_id=#{activity_id} ${limit}")
	public List<Activity_time> selectByactivity_id(SearchInfo_activity_id infoid);
    
	@Insert("insert into activity_time(activity_id,dateinfo,time1,time2,time3,time4,time5,time6,roominfo,operator_id,status,comments) values(#{activity_id},#{dateinfo},#{time1},#{time2},#{time3},#{time4},#{time5},#{time6},#{roominfo},#{operator_id},#{status},#{comments})")
	public void insert(Activity_time a);
	
	@Update("update activity_time set dateinfo=#{dateinfo},time1=#{time1},time2=#{time2},time3=#{time3},time4=#{time4},time5=#{time5},time6=#{time6},roominfo=#{roominfo},comments=#{comments},status=#{status} where id=#{id}")
	public void update(Activity_time a);
	
	@Update("update activity_time set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_time a);
	
	@Delete("delete from activity_time where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_time ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_time ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_time where niki=#{niki}")
	public List<Activity_time> login(Activity_time a);
	
	@Select("select * from activity_time where activity_id=#{id}")
	public List<Activity_time> selectByactivityId(int id);
	
	@Select("select count(id) count from activity_time where activity_id=#{activity_id}")
	public int countByactivity_id(int activity_id);
	
}
