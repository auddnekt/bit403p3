package com.bitcamp.TFmapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserDTO;
import com.bitcamp.TFDTO.ViewListDTO;

@Mapper
public interface TFmapper {

	int SearchCount(HashMap<String, Object> hm);

	int MemberCount(HashMap<String, Object> hm);

	List<StoreListDTO> StoreSearch(HashMap<String, Object> hm);

	List<StoreListDTO> MemberSearch(HashMap<String, Object> hm);

	public void MamberInsertResult(StoreListDTO dto);

	StoreListDTO MemberDetail(HashMap<String, Object> hm);

	public void MemberUpdateResult(StoreListDTO dto);

	public void MemberDelete(int no);

	StoreListDTO RandomReco();

	List<ReviewListDTO> ReplyList(int no);

	public void ReplyInsert(ReviewListDTO dto);

	void ReplyDelete(int no);

	void StoreView(int no);

	List<ViewListDTO> StoreViewList();

	List<StoreListDTO> MainBestSearch();

	List<StoreListDTO> MemberBestSearch();

	int ReplyCount(int no);

	int StoreHit(int no);

	ReviewListDTO ReplyDetail(int no);

	void ReplyUpdateResult(ReviewListDTO dto);

	List<StoreListDTO> WeatherBestSearch(String weather);
	
	UserDTO login(UserDTO dto);

	public void userjoin(UserDTO dto);

	int idCheck(String userId);
	
	void StoreUp(int no, String userid);

	int StoreUpCount(int no);

	void Storedown(String userid);

	void StoredownCount(int storeno);

	int StoretotalupCount(int storeno);

	int StoreUpAction(HashMap<String, Object> hm);

	void StoreUp(HashMap<String, Object> hm);

	List<StoreListDTO> MemberBest();

	int WeatherCount(HashMap<String, Object> hm);

	List<StoreListDTO> WeatherSearch(HashMap<String, Object> hm);

	List<ReviewListDTO> ReviewList();

	List<UserDTO> User(String userid);
	
	UserDTO loginN(UserDTO dto);

	//void userroot(UserDTO dto);

	void naverjoin(UserDTO dto);

	
}