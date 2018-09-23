package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_usergroup;
import utils.SearchInfo;

@Repository("Activity_usergroup_Mapper")
public interface Activity_usergroup_Mapper extends BaicsMapper{
    @Select("select * from activity_usergroup ${where} ${limit}")
	public List<Activity_usergroup> select(SearchInfo info);
    
    @Select("select * from activity_usergroup where id=#{id}")
	public List<Activity_usergroup> selectById(int id);
    
	@Insert("insert into activity_usergroup() values()")
	public void insert(Activity_usergroup au);
	
	@Update("update activity_usergroup set  where id=#{id}")
	public void update(Activity_usergroup au);
	
	@Update("update activity_usergroup set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_usergroup au);
	
	@Delete("delete from activity_usergroup where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_usergroup ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_usergroup ${where}")
	public int count(SearchInfo info);
	
	
}
