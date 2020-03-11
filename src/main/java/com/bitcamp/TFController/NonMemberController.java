package com.bitcamp.TFController;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.TFDTO.MakePage;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFService.NonMemberService;

@Controller
public class NonMemberController {
	
	@Resource(name="NonMemberServiceImple")
	public NonMemberService service;
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("/loginresult")
	public String loginresult(UserInfoDTO dto, HttpSession session) {
		if(dto.getUserId().equals("aaa") && dto.getUserPwd().equals("123")) {
			session.setAttribute("id", dto.getUserId());
			return "redirect:Back/NonMember/Main";
		}
		else {
			return "redirect:Back/NonMember/Login";
		}
	}
	
	@RequestMapping("/Main")
	public String Main() {
		return "redirect:Back/NonMember/Main";
	}
	
	@RequestMapping("/StoreSearch")
	public String StoreSearch(@RequestParam(required=false, defaultValue="1") int currPage,
					   @RequestParam(required=false, defaultValue="") String search,
					   @RequestParam(required=false, defaultValue="") String searchtxt, Model model)
	{
		Pattern p = Pattern.compile("(^[0-9]*$");
		if(search=="" || "".equals(search)) {
			Matcher m = p.matcher(searchtxt);
			if(!m.find()) {
				searchtxt="";
				model.addAttribute("searchtxt", "");
			}
			else {
				model.addAttribute("searchtxt", searchtxt);
			}
		}
		
		int totalCount = service.totalCount(search, searchtxt);
		int pageSize=10;
		int blockSize=5;
		
		MakePage page = new MakePage(currPage, totalCount, pageSize, blockSize);
		
		List<StoreListDTO> StoreSearch = service.StoreSearch(search, searchtxt, page.getStartRow(), page.getEndRow());
		
		model.addAttribute("StoreSearch", StoreSearch);
		model.addAttribute("page", page);
		model.addAttribute("search", search);
		model.addAttribute("searchtxt", searchtxt);
		
		return "redireck:Back/NonMember/Search";
	}
	
}