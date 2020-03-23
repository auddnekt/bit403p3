package com.bitcamp.TFService;

import com.bitcamp.TFDTO.StoreListDTO;

public interface MemberService {

	void insertresult(StoreListDTO dto);

	StoreListDTO detail(int no);

	void updateresult(StoreListDTO dto);

	void delete(int no);

}
