package com.bitcamp.TFmapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.bitcamp.TFDTO.NoticeListDTO;

@Mapper
public interface TFmapper2 {
		
	public int NoticeInsert(NoticeListDTO dto);

	public NoticeListDTO NoticeDetail(int no);

	public int NoticeUpdate(NoticeListDTO dto);

	public int NoticeDelete(int no);

	public List<NoticeListDTO> NoticeList();

}