package com.bitcamp.TFService;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFmapper.TFmapper;

@Service("memberservice")
public class MemberServiceImple implements MemberService{

	@Resource
	private TFmapper mapper;
	
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

}
