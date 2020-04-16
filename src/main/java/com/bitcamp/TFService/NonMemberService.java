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

	StoreListDTO randomreco();

	List<ReviewListDTO> replylist(int no);

	void view(int no);

	List<StoreListDTO> MainBestSearch();

	List<StoreListDTO> MemberBestSearch();

	int replyCount(int no);

	int storehit(int no);

	List<StoreListDTO> WeatherBestSearch(String weather);

	UserDTO login(String userId, String userPw);

	void userjoin(UserDTO dto);

	int idCheck(String userId);

	List<StoreListDTO> MemberBest();

	int WeatherCount(String search, String searchtxt);

	List<StoreListDTO> WeatherSearch(String search, String searchtxt, int endRow);

	List<ReviewListDTO> reviewlist();

	List<UserDTO> user(String userid);
	
	//void userRoot(UserDTO dto);

	void naverjoin(UserDTO dto);

	UserDTO loginN(String userId);
	
	StoreListDTO detail(String userid, int no);
	
	int storeupaction(String userid, int storeno);
	
	int storetotalupcount(int storeno);
	
}
