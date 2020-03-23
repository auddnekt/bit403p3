package com.bitcamp.TFController;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFService.MemberService;

public class MemberController {

	private MemberService memberservice;
	
	@RequestMapping("/storeinsert")
	public String memberInsert() {
		return "Back/MemberService/StoreInsert";
	}
	
	@RequestMapping("/memberinsertresult")
	public String memberInsert(StoreListDTO dto) {
		
		memberservice.insertresult(dto);
		
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/memberdetail/{no}")
	public String memberDetail(@PathVariable int no, Model model) {
		
		StoreListDTO dto = memberservice.detail(no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/StoreDetail";
	}
	
	@RequestMapping("/memberupdate/{no}")
	public String memberUpdate(@PathVariable int no, Model model) {
		
		StoreListDTO dto = memberservice.detail(no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/StoreUpdate";
	}
	
	@RequestMapping("/memberupdateresult")
	public String memberUpdateResult(StoreListDTO dto) {
		memberservice.updateresult(dto);
		return "redirect:/membersearch";
		
	}
	
	@RequestMapping("/memberdelete/{no}")
	public String delete(@PathVariable int no) {
		
		memberservice.delete(no);
				
		return "redirect:/membersearch";
	}
}
