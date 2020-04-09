package com.bitcamp.TFService;

import java.util.List;

import com.bitcamp.TFDTO.NoticeListDTO;

public interface ManagerService {

	int insertresult(NoticeListDTO dto);

	NoticeListDTO detail(int no);

	int updateresult(NoticeListDTO dto);

	int delete(int no);

	List<NoticeListDTO> listAll();

}
