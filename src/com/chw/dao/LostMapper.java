package com.chw.dao;


import java.util.List;
import java.util.Map;

import com.chw.bean.Lost;
import com.chw.bean.Type;

public interface LostMapper {

	
	public List<Lost> queryAllLosts();
	
	public int insertLost(Lost lost);
	
	public Lost queryLost(Integer lostId);
	public int updateLost(Lost lost);
	
	public List<Type> queryAllTypes();
	
	public List<Type> queryTypes(Integer lostId);
		
	public int insertLostType(Map <Object,Object> map);
	public int deleteLostType(Integer lId);
}
