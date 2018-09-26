package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_checkwork;
import utils.SearchInfo;

@Repository("Activity_checkwork_Mapper")
public interface Activity_checkwork_Mapper extends BaicsMapper{
    @Select("select * from activity_checkwork ${where} ${limit}")
	public List<Activity_checkwork> select(SearchInfo info);
    
    @Select("select * from activity_checkwork where id=#{id}")
	public List<Activity_checkwork> selectById(int id);
    
	@Insert("insert into activity_checkwork(name) values(#{name})")
	public void insert(Activity_checkwork ac);
	
	@Update("update activity_checkwork set name=#{name} where id=#{id}")
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
