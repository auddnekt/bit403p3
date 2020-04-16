package com.bitcamp.TFService;

import java.util.List;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.ViewListDTO;

public interface MemberService {
	

	
	void insertresult(StoreListDTO dto);
	
	void updateresult(StoreListDTO dto);
	
	void delete(int no);
	
	ReviewListDTO replydetail(int no);
	
	void replyinsert(ReviewListDTO dto);
	
	void replyupdateresult(ReviewListDTO dto);
	
	void replydelete(int no);
	
	List<ViewListDTO> storeviewlist();
	
	void storeup(int no, String userid);

	void storeupcount(int no);

	void storedown(String userid);

	void storedowncount(int storeno);

	int storetotalupcount(int storeno);

	StoreListDTO detail(String userid, int no);
	
	int storeupaction(String userid, int storeno);

}
