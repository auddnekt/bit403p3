package com.bitcamp.TFController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.bitcamp.TFDTO.NoticeListDTO;
import com.bitcamp.TFService.ManagerService;

@Controller
public class ManagerController {

@Autowired
private ManagerService managerservice;


@RequestMapping("/noticelist")
public String list(Model model)
{
	List<NoticeListDTO> dto = managerservice.listAll();
	model.addAttribute("dto",dto);
			
	return "Back/Manager/NoticeList";
}

@RequestMapping("/noticeinsert")
public String managerInsert() {
	return "Back/Manager/NoticeInsert";
}

@RequestMapping("/noticeinsertresult")
public String managerInsertResult(NoticeListDTO dto) {
	
	managerservice.insertresult(dto);
	return "redirect:/noticelist";
}

@RequestMapping("/noticedelete/{no}")
public String managerdelete(@PathVariable int no, Model model) 
{
	int result=managerservice.delete(no);
	model.addAttribute("result",result);
			
	return "redirect:/noticelist";
}

@RequestMapping("/noticeupdate/{no}")
public String managerUpdate(@PathVariable int no, Model model) {
	
	NoticeListDTO dto = managerservice.detail(no);
	model.addAttribute("dto", dto);
	
	return "Back/Manager/NoticeUpdate";
}

@RequestMapping("/noticeupdateresult")
public String managerUpdateResult(NoticeListDTO dto) {
	
	int result=managerservice.updateresult(dto);
	return "redirect:/noticelist";
}


@RequestMapping("/noticedetail/{no}")
public String managerDetail(@PathVariable int no, Model model) {
	
	NoticeListDTO dto = managerservice.detail(no);
	model.addAttribute("dto", dto);
	
	return "Back/Manager/NoticeDetail";
}


}
