package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Activity;
import entity.Activity_user;
import entity.Activity_usergroup;
import utils.SearchInfo;
import utils.SearchInfo_3;

@Repository("Activity_usergroup_Mapper")
public interface Activity_usergroup_Mapper extends BaicsMapper{
    @Select("select * from activity_usergroup ${where} ${limit}")
	public List<Activity_usergroup> select(SearchInfo info);
    
    @Select("select * from activity_usergroup where id=#{id}")
	public List<Activity_usergroup> selectById(int id);
    
	@Insert("insert into activity_usergroup(name,activity_id,ids,comments,creatdate,operator_id) values(#{name},#{activity_id},#{ids},#{comments},#{creatdate},#{operator_id})")
	public void insert(Activity_usergroup au);
	
	@Update("update activity_usergroup set ids=#{ids} where id=#{id}")
	public void update(Activity_usergroup au);
	
	@Update("update activity_usergroup set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_usergroup au);
	
	@Delete("delete from activity_usergroup where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_usergroup ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_usergroup ${where}")
	public int count(SearchInfo info);
	
	@Select("select GROUP_CONCAT(ids) ids from activity_usergroup")
	public List<Activity_usergroup> selectAllids();
	
	@Select("select u.*,s.name sname from activity_user u inner join activity_school s on s.id=u.school_id ${where}")
	public List<Activity_user> selectids(SearchInfo info);
	
	@Select("select u.*,s.name sname from activity_user u inner join activity_school s on s.id=u.school_id ${where}")
	public List<Activity_user> selectnotids(SearchInfo_3 info3);
	
	@Update("UPDATE activity set group_ids=CONCAT(group_ids,#{group_id}) where id=#{id}")
	public void updateids(Activity a);
	
	@Update("update activity_user set group_id=#{group_id2} where id in (${ids})")
	public void updateuserid(Activity a);
	
	@Update("update activity_user set group_id=0 where id not in (${ids}) and group_id=#{id}")
	public void updateuseridto0(Activity a);
	
}
