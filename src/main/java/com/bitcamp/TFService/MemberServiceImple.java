package com.bitcamp.TFService;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFmapper.TFmapper;

@Service("memberservice")
public class MemberServiceImple implements MemberService{

	@Autowired
	private TFmapper mapper;
	
	
	
	@Override
	public int storeupaction(String userid, int storeno) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("userid", userid);
		hm.put("storeno", storeno);
		
		return mapper.StoreUpAction(hm);
	}
	
	@Override
	public void insertresult(StoreListDTO dto) {
		mapper.MamberInsertResult(dto);
	}

	@Override
	public StoreListDTO detail(String userid, int no) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("userid", userid);
		hm.put("no", no);
				
		return mapper.MemberDetail(hm);
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
	public void replyinsert(ReviewListDTO dto) {
		mapper.ReplyInsert(dto);		
	}

	@Override
	public void replydelete(int no) {
		mapper.ReplyDelete(no);
		
	}


	@Override
	public ReviewListDTO replydetail(int no) {
		return mapper.ReplyDetail(no);
	}

	@Override
	public void replyupdateresult(ReviewListDTO dto) {
		mapper.ReplyUpdateResult(dto);
	}
	
	@Override
	public List<ViewListDTO> storeviewlist() {
		return mapper.StoreViewList();
	}
	
	
	@Override
	public void storeup(int storeno, String userid) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("userid", userid);
		hm.put("storeno", storeno);
		
		mapper.StoreUp(hm);
	}
	
	@Override
	public void storeupcount(int storeno) {
		mapper.StoreUpCount(storeno);
		
	}

	@Override
	public void storedown(String userid) {
		
		mapper.Storedown(userid);	
		
	}

	@Override
	public void storedowncount(int storeno) {
		mapper.StoredownCount(storeno);
		
	}

	@Override
	public int storetotalupcount(int storeno) {
		return mapper.StoretotalupCount(storeno);
	}
	
	

}
