package com.bitcamp.TFmapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.TFDTO.StoreListDTO;

@Mapper
public interface TFmapper {

	int SearchCount(HashMap<String, Object> hm);

	int MemberCount(HashMap<String, Object> hm);

	List<StoreListDTO> StoreSearch(HashMap<String, Object> hm);

	List<StoreListDTO> MemberSearch(HashMap<String, Object> hm);


	
}