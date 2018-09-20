package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_admin;
import utils.SearchInfo;

@Repository("Activity_admin_Mapper")
public interface Activity_admin_Mapper extends BaicsMapper{
    @Select("select * from activity_admin ${where} ${limit}")
	public List<Activity_admin> select(SearchInfo info);
    
    @Select("select * from activity_admin where id=#{id}")
	public List<Activity_admin> selectById(int id);
    
	@Insert("insert into activity_admin(niki,name,pass,type,tel,power,status,comments) values(#{niki},#{name},123,#{type},#{tel},#{power},0,#{comments})")
	public void insert(Activity_admin ad);
	
	@Update("update activity_admin set niki=#{niki},name=#{name},type=#{type},tel=#{tel},power=#{power},comments=#{comments} where id=#{id}")
	public void update(Activity_admin ad);
	
	@Update("update activity_admin set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_admin ad);
	
	@Delete("delete from activity_admin where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_admin ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_admin ${where}")
	public int count(SearchInfo info);
	
	@Select("select pass from activity_admin where niki=#{niki}")
	public List<Activity_admin> login(Activity_admin ad);
	
	
}
