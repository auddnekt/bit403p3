package com.bitcamp.TFController;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.TFService.NonMemberService;

@Controller
public class NonMemberController {
	
	@Resource(name="NonMemberServiceImple")
	public NonMemberService service;
	
	
	@RequestMapping("/main")
	public String list(Model model)
	{
		return "NonMember/Main";
	}
	
}