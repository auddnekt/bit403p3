package com.bitcamp.TFmapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.ViewListDTO;

@Mapper
public interface TFmapper {

	int SearchCount(HashMap<String, Object> hm);

	int MemberCount(HashMap<String, Object> hm);

	List<StoreListDTO> StoreSearch(HashMap<String, Object> hm);

	List<StoreListDTO> MemberSearch(HashMap<String, Object> hm);

	public void MamberInsertResult(StoreListDTO dto);

	StoreListDTO MemberDetail(int no);

	public void MemberUpdateResult(StoreListDTO dto);

	public void MemberDelete(int no);

	StoreListDTO RandomReco();

	List<ReviewListDTO> ReplyList(int no);

	public void ReplyInsert(ReviewListDTO dto);

	void ReplyDelete(int no);

	void StoreView(int no);

	List<ViewListDTO> StoreViewList();

}