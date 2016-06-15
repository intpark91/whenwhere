package com.whenwhere.main.dao;

import java.util.List;
import java.util.Map;

import com.whenwhere.main.vo.LocationVO;

public interface SearchDAO {
	public List<String> getLocationList(String sub_loc);
	public List<Map<String, Object>> getSubLocationList();
	public List<Map<String, Object>> getEventList(Map<String, Object> map);
	public List<Map<String, Object>> getFoodList(Map<String, Object> map);
}
