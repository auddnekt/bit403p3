package com.bitcamp.TFController;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bitcamp.TFDTO.MakePage;
import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFService.NonMemberService;
import com.mysql.cj.log.Log;

import org.apache.log4j.Logger; 


@Controller
public class NonMemberController {
	
	@Resource
	public NonMemberService nonmemberservice;
	
	@Inject
	public NonMemberController(NonMemberService nonMemberService) {
		this.nonmemberservice = nonMemberService;
	}
	
	//회원가입 페이지
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerGET() throws Exception{
		return "/Back/NonMember/register";
	}
	
	//회원가입 처리
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerPOST(UserInfoDTO userDTO, RedirectAttributes redirectAttributes) throws Exception{
		String hashedPw = BCrypt.hashpw(userDTO.getUserPwd(), BCrypt.gensalt());
		userDTO.setUserPwd(hashedPw);
		nonmemberservice.register(userDTO);
		redirectAttributes.addFlashAttribute("msg","registered");
		
		return "/Back/NonMember/Login";
	}
	
	
	/*@RequestMapping("login")
	public String login() {
		return "Back/NonMember/login";
	}
	
	@RequestMapping("/loginresult")
	public String loginresult(UserInfoDTO dto, HttpSession session) {
		if(dto.getUserId().equals("aaa") && dto.getUserPwd().equals("123")) {
			session.setAttribute("id", dto.getUserId());
			return "Back/NonMember/Main";
		}
		else {
			return "redirect:Back/NonMember/Login";
		}
	}*/
	
	
	@RequestMapping("/main")
	public String Main() {
		return "Back/NonMember/Main";
	}
	@RequestMapping("/randomrecon")
	public String RandomReco() {
		return "Back/NonMember/RandomReco";
	}
	
	@RequestMapping("/randomreconResult")
	public String RandomRecoResult() {
		
		return "Back/NonMember/RandomReco";
	}
	
	@RequestMapping("/storesearch")
	public String StoreSearch(@RequestParam(required=false, defaultValue="1") int currpage,
							  @RequestParam(required=false, defaultValue="") String search,
							  @RequestParam(required=false, defaultValue="") String searchtxt, Model model)
	{
		
		int totalCount = nonmemberservice.SearchCount(search, searchtxt);
		int pageSize=10;
		int blockSize=5;
		
		
		MakePage page = new MakePage(currpage, totalCount, pageSize, blockSize);
		List<StoreListDTO> StoreSearch = nonmemberservice.StoreSearch(search, searchtxt, page.getEndRow());
		
		System.out.println(page.getEndRow()+"!!");
		
		model.addAttribute("StoreSearch", StoreSearch);
		model.addAttribute("page", page);
		model.addAttribute("search", search);
		model.addAttribute("searchtxt", searchtxt);
		
		return "Back/NonMember/StoreSearch";
	}
	
	@RequestMapping("/membersearch")
	public String MemberSearch(@RequestParam(required=false, defaultValue="1") int currpage,
							   @RequestParam(required=false, defaultValue="") String search,
							   @RequestParam(required=false, defaultValue="") String searchtxt, Model model)
	{

		
		int totalCount = nonmemberservice.MemberCount(search, searchtxt);
		int pageSize=10;
		int blockSize=5;
		
		MakePage page = new MakePage(currpage, totalCount, pageSize, blockSize);
		
		List<StoreListDTO> MemberSearch = nonmemberservice.MemberSearch(search, searchtxt, page.getEndRow());
		
		model.addAttribute("StoreSearch", MemberSearch);
		model.addAttribute("page", page);
		model.addAttribute("search", search);
		model.addAttribute("searchtxt", searchtxt);
		
		return "Back/NonMember/MemberSearch";
	}
	
	
	@RequestMapping("/storeinsert")
	public String memberInsert() {
		return "Back/MemberService/StoreInsert";
	}
	
	@RequestMapping("/memberinsertresult")
	public String memberInsert(StoreListDTO dto) {
		
		nonmemberservice.insertresult(dto);
		
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/memberdetail/{no}")
	public String memberDetail(@PathVariable int no, Model model) {
		
		StoreListDTO dto = nonmemberservice.detail(no);
		model.addAttribute("dto", dto);
		
		nonmemberservice.view(no);
		model.addAttribute("no", no);
		
		List<ReviewListDTO> reply = nonmemberservice.replylist(no);
		model.addAttribute("reply", reply);
		
		return "Back/MemberService/StoreDetail";
	}
	
	@RequestMapping("/memberupdate/{no}")
	public String memberUpdate(@PathVariable int no, Model model) {
		
		StoreListDTO dto = nonmemberservice.detail(no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/StoreUpdate";
	}
	
	@RequestMapping("/memberupdateresult")
	public String memberUpdateResult(StoreListDTO dto) {
		nonmemberservice.updateresult(dto);
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/memberdelete/{no}")
	public String delete(@PathVariable int no) {
		
		nonmemberservice.delete(no);
				
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/randomreco")
	public String randomReco(Model model) {
		StoreListDTO dto = nonmemberservice.randomreco();
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/RandomReco";
	}
	
	@RequestMapping("/replyinsert")
	public String replyInsert(ReviewListDTO dto) {
		
		nonmemberservice.replyinsert(dto);
		int no = dto.getStoreNo();
		
		return "redirect:/memberdetail/"+no;
	}
	
	@RequestMapping("/replydelete/{no}")
	public String replydelete(@PathVariable int no, int rno) {
		
		nonmemberservice.replydelete(no);
		return "redirect:/memberdetail/"+rno;
	}
	
	@RequestMapping("/storeview")
	public String storeView(Model model) {
		List<ViewListDTO> dto = nonmemberservice.storeviewlist();
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/StoreListView";
	}
}