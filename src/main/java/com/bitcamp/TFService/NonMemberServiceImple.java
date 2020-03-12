package com.bitcamp.TFService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFmapper.TFmapper;

@Service("nonmemberservice")
public class NonMemberServiceImple implements NonMemberService{

	@Autowired
	private TFmapper mapper;

	@Override
	public int SearchCount(String search, String searchtxt) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search", search);
		hm.put("searchtxt", searchtxt);
		return mapper.SearchCount(hm);
		
		
	}

	@Override
	public List<StoreListDTO> StoreSearch(String search, String searchtxt, int startRow, int endRow) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search",search);
		hm.put("searchtxt", searchtxt);
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		return mapper.StoreSearch(hm);
	}
	
	@Override
	public int MemberCount(String search, String searchtxt) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search", search);
		hm.put("searchtxt", searchtxt);
		System.out.println(search+' '+searchtxt+" service");
		return mapper.MemberCount(hm);
	}



	@Override
	public List<StoreListDTO> MemberSearch(String search, String searchtxt, int startRow, int endRow) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search",search);
		hm.put("searchtxt", searchtxt);
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		return mapper.MemberSearch(hm);
	}


	
}