package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import entity.Activity_market;
import utils.SearchInfo;

@Repository("Activity_market_Mapper")
public interface Activity_market_Mapper extends BaicsMapper{
    @Select("select * from activity_market ${where} ${limit}")
	public List<Activity_market> select(SearchInfo info);
	
	@Select("SELECT * from activity_market order by id desc")
	public List<Activity_market> selectDesc();
    
    @Select("select * from activity_market where activity_id=#{activity_id} and date=#{date}")
	public List<Activity_market> selectByAid(Activity_market am);
    
	@Insert("insert into activity_market(activity_id,operator_id,date,info,json,comments) values(#{activity_id},#{operator_id},#{date},#{info},#{json},#{comments})")
	public void insert(Activity_market as);
	
	@Update("update activity_market set name=#{name} where id=#{id}")
	public void update(Activity_market as);
	
	@Update("update activity_market set name=#{name},parentid=#{parentid} ${where}")
	public void updateAll(Activity_market as);
	
	@Delete("delete from activity_market where id=#{id}")
	public void delete(int id); 
	
	@Delete("delete from activity_market ${where}")
	public void deleteALL(SearchInfo info); 
	
	@Select("select count(id) count from activity_market ${where}")
	public int count(SearchInfo info);
	
	@Select("select * from activity_market")
	public List<Activity_market> selectAll();
	
	@Select("select max(id) from activity_market")
	public int selectMaxId();
}
