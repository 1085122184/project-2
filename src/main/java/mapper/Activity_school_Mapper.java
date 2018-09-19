package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_school;
import utils.SearchInfo;

@Repository("Activity_school_Mapper")
public interface Activity_school_Mapper extends BaicsMapper{
    @Select("select * from activity_school ${where} ${limit}")
	public List<Activity_school> select(SearchInfo info);
    
    @Select("select * from activity_school where id=#{id}")
	public List<Activity_school> selectById(int id);
    
	@Insert("insert into activity_school(name) values(#{name})")
	public void insert(Activity_school as);
	
	@Update("update activity_school set name=#{name} where id=#{id}")
	public void update(Activity_school as);
	
	@Update("update activity_school set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_school as);
	
	@Delete("delete from activity_school where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_school ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_school ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_school")
	public List<Activity_school> selectAll();
}
