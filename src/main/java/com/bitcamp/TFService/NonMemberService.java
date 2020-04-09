package com.bitcamp.TFService;

import java.util.List;


import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserDTO;
import com.bitcamp.TFDTO.ViewListDTO;


public interface NonMemberService {

	int SearchCount(String search, String searchtxt);

	List<StoreListDTO> StoreSearch(String search, String searchtxt, int endRow);

	List<StoreListDTO> MemberSearch(String search, String searchtxt, int endRow);

	int MemberCount(String search, String searchtxt);
	
	void insertresult(StoreListDTO dto);

	StoreListDTO detail(String userid, int no);

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

	ReviewListDTO replydetail(int no);

	void replyupdateresult(ReviewListDTO dto);

	List<StoreListDTO> WeatherBestSearch(String weather);

	UserDTO login(String userId, String userPw);

	void userjoin(UserDTO dto);

	int idCheck(String userId);
	
	void storeup(int no, String userid);

	void storeupcount(int no);

	void storedown(String userid);

	void storedowncount(int storeno);

	int storetotalupcount(int storeno);

	int storeupaction(String userid, int storeno);

	List<StoreListDTO> MemberBest();

}
