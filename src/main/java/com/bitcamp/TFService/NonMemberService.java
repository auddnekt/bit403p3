package com.bitcamp.TFService;

import java.util.List;

import com.bitcamp.TFDTO.StoreListDTO;


public interface NonMemberService {

	int SearchCount(String search, String searchtxt);

	List<StoreListDTO> StoreSearch(String search, String searchtxt, int startRow, int endRow);

	List<StoreListDTO> MemberSearch(String search, String searchtxt, int startRow, int endRow);

	int MemberCount(String search, String searchtxt);

}
