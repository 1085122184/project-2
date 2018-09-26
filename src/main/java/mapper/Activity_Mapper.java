package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity;
import entity.Activity_time;
import utils.SearchInfo;

@Repository("Activity_Mapper")
public interface Activity_Mapper extends BaicsMapper{
    @Select("select * from activity ${where} ${limit}")
	public List<Activity> select(SearchInfo info);
    
    @Select("SELECT * from activity  order by id desc")
   	public List<Activity> selectDesc();
    
    @Select("select * from activity where id=#{id}")
	public List<Activity> selectById(int id);
    
	@Insert("insert into activity(courseinfo,planinfo,dateinfo,name,type,attention) values(#{courseinfo},#{planinfo},#{dateinfo},#{name},#{type},#{attention})")
	public void insert(Activity a);
	
	@Update("update activity set courseinfo=#{courseinfo},planinfo=#{planinfo},dateinfo=#{dateinfo},name=#{name},type=#{type},attention=#{attention} where id=#{id}")
	public void update(Activity a);
	
	@Update("update activity set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity a);
	
	@Delete("delete from activity where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity where niki=#{niki}")
	public List<Activity> login(Activity a);
	
	@Select("select a.*,t.* from activity a left join activity_time t on t.activity_id=a.id where a.id=#{id}")
	public List<Activity> timeinfo(int id);
	@Select("select a.*,u.name uname,u.id uid from activity a LEFT JOIN activity_usergroup u on u.activity_id=a.id where a.id=#{id}")
	public List<Activity> groupinfo(int id);
	@Select("select name,group_id from activity_user")
	public List<Activity> userinfo();
	
	@Select("select max(id) from activity")
	public int selectMaxId();
	

}
