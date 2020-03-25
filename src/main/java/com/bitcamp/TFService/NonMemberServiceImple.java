package com.bitcamp.TFService;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFmapper.TFmapper;

@Service("nonmemberservice")
public class NonMemberServiceImple implements NonMemberService{

	@Autowired
	private TFmapper mapper;
	
	
	@Inject
	private final SqlSession sqlSession;
	
	public NonMemberServiceImple(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

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
		System.out.println(search+' '+searchtxt+" service");
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
	public void insertresult(StoreListDTO dto) {
		mapper.MamberInsertResult(dto);
	}

	@Override
	public StoreListDTO detail(int no) {
		return mapper.MemberDetail(no);
	}

	@Override
	public void updateresult(StoreListDTO dto) {
		mapper.MemberUpdateResult(dto);
		
	}

	@Override
	public void delete(int no) {
		mapper.MemberDelete(no);
		
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
	public void replyinsert(ReviewListDTO dto) {
		mapper.ReplyInsert(dto);		
	}

	@Override
	public void replydelete(int no) {
		mapper.ReplyDelete(no);
		
	}

	@Override
	public void view(int no) {
		mapper.StoreView(no);
		
	}

	@Override
	public List<ViewListDTO> storeviewlist() {
		return mapper.StoreViewList();
	}

	@Override
	public void register(UserInfoDTO userDTO) throws Exception {
		sqlSession.insert(mapper + ".register", userDTO);
	}
}