package com.bitcamp.TFController;

import java.io.File;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFService.MemberService;
import com.bitcamp.TFUtils.UploadFileUtils;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {
	
	@Resource
	private MemberService memberservice;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping("/Logout")
	public String loginresult(HttpSession session) {
		//System.out.println(session.getAttribute("userId"));
		//System.out.println(session.getAttribute("userName"));
		//System.out.println(session.getAttribute("userNickName"));
		
		session.invalidate();
		return "redirect:/login";
	}
	
	@RequestMapping("/storeup")
	@ResponseBody
	public int storeUp(@RequestParam int storeno, @RequestParam String userid,  @RequestParam String upDown, Model model) {

		   int StoreUpAction = memberservice.storeupaction(userid, storeno);
			System.out.println(StoreUpAction);   
   
	     return  StoreUpAction;
	}
	
	
	/*	@RequestMapping(value = "/storeinsert", method = {RequestMethod.GET})*/
	@RequestMapping("/storeinsert")
	public String memberInsert(/*@PathVariable String userid, Model model*/) {
		
		/*List<UserDTO> User = nonmemberservice.user(userid);
		model.addAttribute("User", User);*/
		
		return "Back/MemberService/StoreInsert";
	}
	
		
	@RequestMapping("/memberinsertresult")
	public String memberInsert(StoreListDTO dto, MultipartFile file) throws IOException, Exception{
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		}
		else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setStoreImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		//dto.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		memberservice.insertresult(dto);
		
		String grade = dto.getStoreGrade();
		System.out.println(grade+"!!!");
		if(grade.equals("1")) {
			return "redirect:/storesearch";
		}
		else {
			return "redirect:/membersearch";
		}
	}
	
	
	@RequestMapping("/memberupdate/{no}")
	public String memberUpdate(@RequestParam(required=false, defaultValue="") String userid, @PathVariable int no, Model model) {
		
		StoreListDTO dto = memberservice.detail(userid, no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/StoreUpdate";
	}
	
	@RequestMapping("/memberupdateresult")
	public String memberUpdateResult(StoreListDTO dto) {
		memberservice.updateresult(dto);
		int no = dto.getStoreNo();
		return "redirect:/memberdetail/"+no;
	}
	
	@RequestMapping("/memberdelete/{no}")
	public String delete(@PathVariable int no) {
		
		memberservice.delete(no);
				
		return "redirect:/membersearch";
	}
	
	@RequestMapping("/replyinsert/{no}")
	public String replyInsert(@PathVariable int no, Model model) {
		
		model.addAttribute("no", no);
				
		return "Back/MemberService/ReviewInsert";
	}
	
	@RequestMapping("/replydetail/{no}")
	public String replyDetail(@PathVariable int no, Model model) {
		
		ReviewListDTO dto = memberservice.replydetail(no);
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/ReviewDetail";
	}
	
	
	@RequestMapping("/replyinsertresult")
	public String replyInsertResult(ReviewListDTO dto) {
		
		memberservice.replyinsert(dto);
		int no = dto.getStoreNo();
		
		return "redirect:/memberdetail/"+no;
	}
	
	@RequestMapping("/replyupdate/{no}")
	public String replyUpdate(@PathVariable int no, Model model) {
		
		ReviewListDTO dto = memberservice.replydetail(no);
		model.addAttribute("dto", dto);
		
		return "Back/MemberService/ReviewUpdate";
	}
	
	@RequestMapping("/replyupdateresult")
	public String replyUpdateResult(ReviewListDTO dto) {
		memberservice.replyupdateresult(dto);
		int no = dto.getStoreNo();
		return "redirect:/memberdetail/"+no;
	}
	
	@RequestMapping("/replydelete/{no}")
	public String replydelete(@PathVariable int no, int rno) {
		
		memberservice.replydelete(no);
		return "redirect:/memberdetail/"+rno;
	}
	
	@RequestMapping("/storeview")
	public String storeView(Model model) {
		List<ViewListDTO> dto = memberservice.storeviewlist();
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/StoreListView";
	}
	
	@RequestMapping("/storeupcount")
	@ResponseBody
	public int storeUpCount(@RequestParam int storeno, @RequestParam String userid,  @RequestParam int upDown, Model model) {
		
		log.info(" param data....."+storeno);
		log.info("param data2...."+userid);
		log.info("param data3...."+upDown);
		
		if(upDown==0) {
			memberservice.storeup(storeno, userid);
			memberservice.storeupcount(storeno);
		} else {
			memberservice.storedown(userid);
			memberservice.storedowncount(storeno);
		}
		
		int totalupcount = memberservice.storetotalupcount(storeno);
		log.info("param data4...."+totalupcount);
		model.addAttribute("totalupcount", totalupcount);
		   
	    return totalupcount;

	}
	

}
