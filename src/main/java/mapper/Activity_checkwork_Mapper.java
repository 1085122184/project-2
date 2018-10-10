package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_checkwork;
import entity.Activity_user;
import utils.SearchInfo;

@Repository("Activity_checkwork_Mapper")
public interface Activity_checkwork_Mapper extends BaicsMapper{
    @Select("select * from activity_checkwork ${where} ${limit}")
	public List<Activity_checkwork> select(SearchInfo info);
    
    @Select("select * from activity_checkwork where id=#{id}")
	public List<Activity_checkwork> selectById(int id);
	
	@Select("select * from activity_checkwork where user_id=#{user_id}")
	public List<Activity_checkwork> selectByUid(int user_id);
    
	@Select("select * from activity_user where activity_id=#{activity_id}")
	public List<Activity_user> selectUser(int activity_id);
	
	@Select("select u.name uname,a.* from activity_user u inner join activity_checkwork a on a.user_id=u.id ${where} ${limit}")
	public List<Activity_checkwork> selectU(SearchInfo info);
	
	
	@Insert("insert into activity_checkwork(activity_id,user_id,date,check1,check2,check3,operator_id,comments,lastdate) values(#{activity_id},#{user_id},#{date},#{check1},#{check2},#{check3},#{operator_id},#{comments},#{lastdate})")
	public void insert(Activity_checkwork ac);
	
	@Update("update activity_checkwork set check1=#{check1},check2=#{check2},check3=#{check3} where user_id=#{id}")
	public void update(Activity_checkwork ac);
	
	@Update("update activity_checkwork set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_checkwork ac);
	
	@Delete("delete from activity_checkwork where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_checkwork ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_checkwork ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_checkwork")
	public List<Activity_checkwork> selectAll();
}
