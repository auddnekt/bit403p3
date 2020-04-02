package com.bitcamp.TFController;
import java.io.File;
import java.io.IOException;
import java.util.List;


import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.bitcamp.TFDTO.MakePage;
import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFService.NonMemberService;
import com.bitcamp.TFUtils.UploadFileUtils;
import com.mysql.cj.log.Log;

import org.apache.log4j.Logger; 

@Controller
public class NonMemberController {
	
	@Resource
	public NonMemberService nonmemberservice;
	
	@Resource(name="uploadPath")
	private String uploadPath;

	
	@RequestMapping("/header")
	public String header() {
		return "Back/NonMember/Header";
		
	}
	@RequestMapping("/footer")
	public String footer() {
		return "Back/NonMember/Footer";
		
	}
	
	
	@RequestMapping("/main")
	public String Main(Model model) {
		
		List<StoreListDTO> MainBestSearch = nonmemberservice.MainBestSearch();
		model.addAttribute("MainBestSearch", MainBestSearch);
		
		List<StoreListDTO> MemberBestSearch = nonmemberservice.MemberBestSearch();
		model.addAttribute("MemberBestSearch", MemberBestSearch);
			
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
		int pageSize=6;
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
		int pageSize=6;
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
	public String memberInsert(StoreListDTO dto/*, MultipartFile file*/)/* throws IOException, Exception */{
		/*String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		}
		else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setStoreImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
//		dto.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);*/
		nonmemberservice.insertresult(dto);
		
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/memberdetail/{no}")
	public String memberDetail(@PathVariable int no, Model model) {
		
		/*조회수와 디테일 데이터*/
		nonmemberservice.storehit(no);
		StoreListDTO dto = nonmemberservice.detail(no);
		model.addAttribute("dto", dto);
		
		/*최근 본 목록*/
		nonmemberservice.view(no);
		model.addAttribute("no", no);
		
		/*리플 리스트*/
		List<ReviewListDTO> reply = nonmemberservice.replylist(no);
		model.addAttribute("reply", reply);
		
		/*리플 갯수*/
		int ReplyCount = nonmemberservice.replyCount(no);
		model.addAttribute("ReplyCount", ReplyCount);
		
		return "Back/MemberService/StoreDetail";
	}
	
	@RequestMapping("/storeup/{no}")
	public String storeUp(@PathVariable int no, Model model) {
		
		nonmemberservice.storeup(no);
		
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
	
	
	@RequestMapping("/replyinsert/{no}")
	public String replyInsert(@PathVariable int no, Model model) {
		
		model.addAttribute("no", no);
				
		return "Back/MemberService/ReviewInsert";
	}
	
	@RequestMapping("/replydetail/{no}")
	public String replyDetail(@PathVariable int no, Model model) {
		
		ReviewListDTO dto = nonmemberservice.replydetail(no);
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/ReviewDetail";
	}
	
	
	@RequestMapping("/replyinsertresult")
	public String replyInsertResult(ReviewListDTO dto) {
		
		nonmemberservice.replyinsert(dto);
		int no = dto.getStoreNo();
		
		return "redirect:/memberdetail/"+no;
	}
	
	@RequestMapping("/replyupdate/{no}")
	public String replyUpdate(@PathVariable int no, Model model) {
		
		ReviewListDTO dto = nonmemberservice.replydetail(no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/ReviewUpdate";
	}
	
	@RequestMapping("/replyupdateresult")
	public String replyUpdateResult(ReviewListDTO dto) {
		nonmemberservice.replyupdateresult(dto);
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