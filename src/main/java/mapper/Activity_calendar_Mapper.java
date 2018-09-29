package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity;
import entity.Activity_calendar;
import entity.Activity_time;
import utils.SearchInfo;

@Repository("Activity_calendar_Mapper")
public interface Activity_calendar_Mapper extends BaicsMapper{
    @Select("select * from activity_time ${where} ${limit}")
	public List<Activity_calendar> select(SearchInfo info);
	
	@Select("select ac.dateinfo start,a.name title from activity_time ac inner join Activity a on a.id=ac.activity_id")
	public List<Activity_calendar> selectcal();
	
	@Select("SELECT * from activity_time order by id desc")
	public List<Activity_calendar> selectDesc();
    
    @Select("select * from activity_time where id=#{id}")
	public List<Activity_calendar> selectById(int id);
	
	@Select("select at.*,a.name aname from activity_time at inner join activity a on a.id=at.activity_id  where at.dateinfo=#{dateinfo}")
	public List<Activity_time> selectByDateinfo(String dateinfo);
    
	@Select("select GROUP_CONCAT(activity_id) ids from activity_time where dateinfo=#{dateinfo}")
	public List<Activity_time> selectGROUP(String dateinfo);
	
	@Insert("insert into activity_time(name) values(#{name})")
	public void insert(Activity_calendar as);
	
	@Update("update activity_time set name=#{name} where id=#{id}")
	public void update(Activity_calendar as);
	
	@Update("update activity_time set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_calendar as);
	
	@Delete("delete from activity_time where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from Activity_time ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from Activity_time ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from Activity_time")
	public List<Activity_calendar> selectAll();
	
	@Select("select max(id) from Activity_time")
	public int selectMaxId();
}
