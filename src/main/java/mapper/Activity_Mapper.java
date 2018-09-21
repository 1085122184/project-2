package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity;
import utils.SearchInfo;

@Repository("Activity_Mapper")
public interface Activity_Mapper extends BaicsMapper{
    @Select("select * from activity ${where} ${limit}")
	public List<Activity> select(SearchInfo info);
    
    @Select("select * from activity where id=#{id}")
	public List<Activity> selectById(int id);
    
	@Insert("insert into activity(niki,name,pass,type,tel,power,status,comments) values(#{niki},#{name},123,#{type},#{tel},#{power},0,#{comments})")
	public void insert(Activity a);
	
	@Update("update activity set niki=#{niki},name=#{name},type=#{type},tel=#{tel},power=#{power},comments=#{comments} where id=#{id}")
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
	
	
}
