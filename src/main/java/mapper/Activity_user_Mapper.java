package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity_user;
import utils.SearchInfo;
import utils.SearchInfo_3;

@Repository("Activity_user_Mapper")
public interface Activity_user_Mapper extends BaicsMapper{
    @Select("select u.*,s.name sname,c.name cname from activity_user u left join activity_school s on s.id=u.school_id left join activity_college c on c.id=u.college_id ${where} ${limit}")
	public List<Activity_user> select(SearchInfo info);
	
	@Select("select u.*,s.name sname,c.name cname from activity_user u left join activity_school s on s.id=u.school_id left join activity_college c on c.id=u.college_id")
	public List<Activity_user> select_3(SearchInfo_3 info3);
    
    @Select("select * from activity_user where id=#{id}")
	public List<Activity_user> selectById(int id);
    
	@Insert("insert into activity_user(niki,pass,name,sex,type,tel,qq,classinfo,ylevel,glevel,slevel,school_id,college_id,status,info,creatdate,operator_id,comments) values(#{niki},123,#{name},#{sex},#{type},#{tel},#{qq},#{classinfo},#{ylevel},#{glevel},#{slevel},#{school_id},#{college_id},#{status},#{info},#{creatdate},#{operator_id},#{comments})")
	public void insert(Activity_user au);
	
	@Update("update activity_user set niki=#{niki},name=#{name},qq=#{qq},classinfo=#{classinfo},type=#{type},tel=#{tel},comments=#{comments} where id=#{id}")
	public void update(Activity_user au);
	
	@Update("update activity_user set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_user au);
	
	@Delete("delete from activity_user where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_user ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_user ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_user")
	public List<Activity_user> selectAll();
}
