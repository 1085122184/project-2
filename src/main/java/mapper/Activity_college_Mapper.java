package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_college;
import entity.Activity_school;
import utils.SearchInfo;

@Repository("Activity_college_Mapper")
public interface Activity_college_Mapper extends BaicsMapper{
    @Select("select * from activity_college ${where} ${limit}")
	public List<Activity_college> select(SearchInfo info);
    
    @Select("select * from activity_college where id=#{id}")
	public List<Activity_college> selectById(int id);
	
	@Select("select * from activity_college where school_id=#{nowid} ${limit}")
	public List<Activity_college> selectBySchoolId(SearchInfo info);
	
	@Select("select count(id) count from activity_college  where school_id=#{nowid}")
	public int countByid(SearchInfo info);
    
	@Insert("insert into activity_college(name,school_id) values(#{name},#{school_id})")
	public void insert(Activity_college ac);
	
	@Update("update activity_college set name=#{name} where id=#{id}")
	public void update(Activity_college ac);
	
	@Update("update activity_college set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_college ac);
	
	@Delete("delete from activity_college where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_college ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_college ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_college")
	public List<Activity_college> selectAll();
	
	@Select("select * from activity_college where school_id=#{school_id}")
	public List<Activity_college> selectBysid(int school_id);
}
