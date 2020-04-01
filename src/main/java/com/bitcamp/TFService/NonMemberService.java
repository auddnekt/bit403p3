package com.bitcamp.TFService;

import java.util.List;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;


public interface NonMemberService {

	int SearchCount(String search, String searchtxt);

	List<StoreListDTO> StoreSearch(String search, String searchtxt, int endRow);

	List<StoreListDTO> MemberSearch(String search, String searchtxt, int endRow);

	int MemberCount(String search, String searchtxt);
	
	void insertresult(StoreListDTO dto);

	StoreListDTO detail(int no);

	void updateresult(StoreListDTO dto);

	void delete(int no);

	StoreListDTO randomreco();

	List<ReviewListDTO> replylist(int no);

	void replyinsert(ReviewListDTO dto);

	void replydelete(int no);

	void view(int no);

	List<ViewListDTO> storeviewlist();

	List<StoreListDTO> MainBestSearch();

	List<StoreListDTO> MemberBestSearch();

	int replyCount(int no);

	int storehit(int no);

	void storeup(int no);


}
