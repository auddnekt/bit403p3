package com.bitcamp.TFService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.TFDTO.NoticeListDTO;
import com.bitcamp.TFmapper.TFmapper2;

@Service
public class ManagerServiceImple implements ManagerService{
	
	@Autowired
	private TFmapper2 mapper;
	
	@Override
	public List<NoticeListDTO> listAll() {
		
		return mapper.NoticeList();
	}
		
	@Override
	public int insertresult(NoticeListDTO dto) {
		
		return mapper.NoticeInsert(dto);
	}
	
	@Override
	public int delete(int no) {
		
		return mapper.NoticeDelete(no);
	}

	@Override
	public NoticeListDTO detail(int no) {
		
		return mapper.NoticeDetail(no);
	}

	@Override
	public int updateresult(NoticeListDTO dto) {
		
		return mapper.NoticeUpdate(dto);
	}	

}
