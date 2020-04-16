package com.bitcamp.TFService;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.TFController.NonMemberController;
import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFmapper.TFmapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service("nonmemberservice")
public class NonMemberServiceImple implements NonMemberService{
	
	
	@Autowired
	private TFmapper mapper;

	
	
	/*@Inject
	private final SqlSession sqlSession;
	
	public NonMemberServiceImple(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}*/

	@Override
	public int SearchCount(String search, String searchtxt) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search", search);
		hm.put("searchtxt", searchtxt);
		return mapper.SearchCount(hm);
		
	}

	@Override
	public List<StoreListDTO> StoreSearch(String search, String searchtxt, int endRow) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search",search);
		hm.put("searchtxt", searchtxt);
		hm.put("endRow", endRow);
		return mapper.StoreSearch(hm);
	}
	
	@Override
	public int MemberCount(String search, String searchtxt) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search", search);
		hm.put("searchtxt", searchtxt);
		return mapper.MemberCount(hm);
	}

	@Override
	public List<StoreListDTO> MemberSearch(String search, String searchtxt, int endRow) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search",search);
		hm.put("searchtxt", searchtxt);
		hm.put("endRow", endRow);
		return mapper.MemberSearch(hm);
	}
	
	

	@Override
	public StoreListDTO randomreco() {
		return mapper.RandomReco();
	}

	@Override
	public List<ReviewListDTO> replylist(int no) {
		
		return mapper.ReplyList(no);
	}

	

	@Override
	public void view(int no) {
		mapper.StoreView(no);
		
	}



	@Override
	public List<StoreListDTO> MainBestSearch() {
		return mapper.MainBestSearch();
	}

	@Override
	public List<StoreListDTO> MemberBestSearch() {
		return mapper.MemberBestSearch();
	}

	@Override
	public int replyCount(int no) {
		return mapper.ReplyCount(no);
	}

	@Override
	public int storehit(int no) {
		return mapper.StoreHit(no);		
	}


	@Override
	public List<StoreListDTO> WeatherBestSearch(String weather) {
		return mapper.WeatherBestSearch(weather);
	}

	@Override
	public UserDTO login(String userId, String userPw) {

		UserDTO dto = new UserDTO();
		dto.setUserId(userId);
		dto.setUserPw(userPw);
		return mapper.login(dto);
	
	}

	@Override
	public void userjoin(UserDTO dto) {
		
		mapper.userjoin(dto);	
	}

	@Override
	public int idCheck(String userId) {
		
		int result=mapper.idCheck(userId);
			
		return result;
	}




	@Override
	public List<StoreListDTO> MemberBest() {
		return mapper.MemberBest();
	}

	@Override
	public int WeatherCount(String search, String searchtxt) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search", search);
		hm.put("searchtxt", searchtxt);
		return mapper.WeatherCount(hm);
	}

	@Override
	public List<StoreListDTO> WeatherSearch(String search, String searchtxt, int endRow) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("search",search);
		hm.put("searchtxt", searchtxt);
		hm.put("endRow", endRow);
		return mapper.WeatherSearch(hm);
	}

	@Override
	public List<ReviewListDTO> reviewlist() {
		return mapper.ReviewList();
	}

	@Override
	public List<UserDTO> user(String userid) {
		return mapper.User(userid);
	}
	
	@Override
	public UserDTO loginN(String userId) {

		UserDTO dto = new UserDTO();
		dto.setUserId(userId);
		return mapper.loginN(dto);
	
	}


	/*@Override
	public void userRoot(UserDTO dto) {
		
		mapper.userroot(dto);
		
	}*/

	@Override
	public void naverjoin(UserDTO dto) {
		System.out.println("naverjoin탔다");
		mapper.naverjoin(dto);
		
	}
	
	@Override
	public StoreListDTO detail(String userid, int no) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("userid", userid);
		hm.put("no", no);
				
		return mapper.MemberDetail(hm);
	}
	
	@Override
	public int storeupaction(String userid, int storeno) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("userid", userid);
		hm.put("storeno", storeno);
		
		return mapper.StoreUpAction(hm);
	}
	
	@Override
	public int storetotalupcount(int storeno) {
		return mapper.StoretotalupCount(storeno);
	}

}