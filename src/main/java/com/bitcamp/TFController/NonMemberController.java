package com.bitcamp.TFController;
import java.io.BufferedReader;


import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.bitcamp.TFDTO.MakePage;
import com.bitcamp.TFDTO.ReviewListDTO;
import com.bitcamp.TFDTO.StoreListDTO;
import com.bitcamp.TFDTO.UserDTO;
import com.bitcamp.TFDTO.UserInfoDTO;
import com.bitcamp.TFDTO.ViewListDTO;
import com.bitcamp.TFService.NonMemberService;
import com.bitcamp.TFUtils.UploadFileUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.Session;
import com.mysql.cj.log.Log;

import lombok.extern.log4j.Log4j;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException; 
/*
 * 
 * insert mapping
 * 수정 삭제 if문
 * 이미지 refresh
 * 
 */


@Log4j
@Controller
public class NonMemberController {
	
	@Resource
	public NonMemberService nonmemberservice;
	
/*	@Resource(name="uploadPath")
	private String uploadPath;*/

	
	@RequestMapping("/header")
	public String header(Model model) {
		
		try {
			String urlstr = "http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=f864cb8b429877a2f548008e3260e8a5&units=metric&lang=kr";
	        URL url = new URL(urlstr);
	        BufferedReader bf;
	        String line;
	        String result="";
	
	        //날씨 정보를 받아온다.
	        bf = new BufferedReader(new InputStreamReader(url.openStream()));
	
	        //버퍼에 있는 정보를 문자열로 변환.
	        while((line=bf.readLine())!=null){
	            result=result.concat(line);
	            //System.out.println(line);
	        }
	        
	        System.out.println(result);
	        
	        //문자열을 JSON으로 파싱
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
	
	        //지역 출력
	        //System.out.println("지역 : " + jsonObj.get("name"));
	
	        //날씨 출력
	        JSONArray weatherArray = (JSONArray) jsonObj.get("weather");
	        JSONObject obj = (JSONObject) weatherArray.get(0);
	        
	        int code = Integer.parseInt(obj.get("id").toString());
	        System.out.println("날씨코드 : "+ code);
	        String weather="";
	        
	      //온도 출력
	        JSONObject mainArray = (JSONObject) jsonObj.get("main");
	        double ktemp = Double.parseDouble(mainArray.get("temp").toString());
	        
	        if(code>=800 && code<=801) {
	        	weather="맑음";
	        }
			else if(code>=802 && code<=804){
				weather="흐림";
			}
			else if(code>=600 && code<=622){
				weather="눈";
			} 
			else if(code==800){
				weather="맑음";
			}
			else if(code>=500 && code<=531){
				weather="비";
			}
			else if(code>=700 && code<=721) {
				weather="맑음";
			}
	        
	        List<StoreListDTO> WeatherBestSearch = nonmemberservice.WeatherBestSearch(weather);
			model.addAttribute("WeatherBestSearch", WeatherBestSearch);
	        
			List<ReviewListDTO> ReviewList = nonmemberservice.reviewlist();
			model.addAttribute("ReviewList", ReviewList);
	        
	        model.addAttribute("weather", weather);
	        model.addAttribute("ktemp", ktemp);
	        
	        bf.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		return "Back/NonMember/Header";
		
	}
	@RequestMapping("/footer")
	public String footer() {
		return "Back/NonMember/Footer";
		
	}
	
	 public static Boolean empty(Object obj) {
		  if (obj instanceof String) return obj == null || "".equals(obj.toString().trim());
		  else if (obj instanceof List) return obj == null || ((List) obj).isEmpty();
		  else if (obj instanceof Map) return obj == null || ((Map) obj).isEmpty();
		  else if (obj instanceof Object[]) return obj == null || Array.getLength(obj) == 0;
		  else return obj == null;
	 }
	
	@RequestMapping("login")
	public String login() {
		return "Back/NonMember/login";
	}
	
	@RequestMapping("/loginresult")
	public String loginresult(@RequestParam(required=false, defaultValue="") String userId, 
							  @RequestParam(required=false, defaultValue="") String userPw,
							  HttpSession session) {
		//System.out.println(userId);
		//System.out.println(userPw);
		
		
		UserDTO dto = nonmemberservice.login(userId, userPw);
		
		//System.out.println("ddddd : " + empty(dto));
		
		if(!empty(dto)) {
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userName", dto.getUserName());
			session.setAttribute("userNickName", dto.getUserNickname());
			session.setAttribute("userGrade", dto.getUserGrade());
			
			System.out.println(dto.getUserId());
			System.out.println(dto.getUserName());
			System.out.println(dto.getUserNickname());
			System.out.println(dto.getUserGrade());
			System.out.println(dto.getUserNickname().getClass().getName());
			
			return "redirect:/main";
		}else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/join")
	public String join() {
		return "Back/NonMember/join";
	}
	
	@RequestMapping("/joinresult")
	public String joinresult(UserDTO dto) {
		nonmemberservice.userjoin(dto);
		return "redirect:/login";
	}
	
	@RequestMapping(value="/idCheck",method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String idCheck(HttpServletRequest request) {
		System.out.println("controller");
		String userId=request.getParameter("userId");
		int result=nonmemberservice.idCheck(userId);
		return Integer.toString(result);
	}
	
	@RequestMapping("/main")
	public String Main(Model model) throws IOException, ParseException {
		
		List<StoreListDTO> MainBestSearch = nonmemberservice.MainBestSearch();
		model.addAttribute("MainBestSearch", MainBestSearch);
		
		List<StoreListDTO> MemberBestSearch = nonmemberservice.MemberBestSearch();
		model.addAttribute("MemberBestSearch", MemberBestSearch);
		
		

		try {
			String urlstr = "http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=f864cb8b429877a2f548008e3260e8a5&units=metric&lang=kr";
	        URL url = new URL(urlstr);
	        BufferedReader bf;
	        String line;
	        String result="";
	
	        //날씨 정보를 받아온다.
	        bf = new BufferedReader(new InputStreamReader(url.openStream()));
	
	        //버퍼에 있는 정보를 문자열로 변환.
	        while((line=bf.readLine())!=null){
	            result=result.concat(line);
	            //System.out.println(line);
	        }
	        
	        System.out.println(result);
	        
	        //문자열을 JSON으로 파싱
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
	
	        //지역 출력
	        //System.out.println("지역 : " + jsonObj.get("name"));
	
	        //날씨 출력
	        JSONArray weatherArray = (JSONArray) jsonObj.get("weather");
	        JSONObject obj = (JSONObject) weatherArray.get(0);
	        
	        int code = Integer.parseInt(obj.get("id").toString());
	        System.out.println("날씨코드 : "+ code);
	        String weather="";
	        
	      //온도 출력
	        JSONObject mainArray = (JSONObject) jsonObj.get("main");
	        double ktemp = Double.parseDouble(mainArray.get("temp").toString());
	        
	        if(code>=800 && code<=801) {
	        	weather="맑음";
	        }
			else if(code>=802 && code<=804){
				weather="흐림";
			}
			else if(code>=600 && code<=622){
				weather="눈";
			} 
			else if(code==800){
				weather="맑음";
			}
			else if(code>=500 && code<=531){
				weather="비";
			}
			else if(code>=700 && code<=721) {
				weather="맑음";
			}
	        
	        List<StoreListDTO> WeatherBestSearch = nonmemberservice.WeatherBestSearch(weather);
			model.addAttribute("WeatherBestSearch", WeatherBestSearch);
	        
			List<ReviewListDTO> ReviewList = nonmemberservice.reviewlist();
			model.addAttribute("ReviewList", ReviewList);
	        
	        model.addAttribute("weather", weather);
	        model.addAttribute("ktemp", ktemp);
	        
	        bf.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
        
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
		
		List<StoreListDTO> MemberBest = nonmemberservice.MemberBest();
		model.addAttribute("MemberBest", MemberBest);
		
		return "Back/NonMember/MemberSearch";
	}
	
	@RequestMapping("/weathersearch")
	public String WeatherSearch(@RequestParam(required=false, defaultValue="1") int currpage,
							   @RequestParam(required=false, defaultValue="") String search,
							   @RequestParam(required=false, defaultValue="") String searchtxt, Model model)
	{

		
		int totalCount = nonmemberservice.WeatherCount(search, searchtxt);
		int pageSize=6;
		int blockSize=5;
		
		MakePage page = new MakePage(currpage, totalCount, pageSize, blockSize);
		
		List<StoreListDTO> WeatherSearch = nonmemberservice.WeatherSearch(search, searchtxt, page.getEndRow());
		
		model.addAttribute("WeatherSearch", WeatherSearch);
		model.addAttribute("page", page);
		model.addAttribute("search", search);
		model.addAttribute("searchtxt", searchtxt);
		
		/*List<StoreListDTO> WeatherSearch = nonmemberservice.StoreSearch(search, searchtxt, page.getEndRow());
		model.addAttribute("WeatherSearch", WeatherSearch);*/
		
		return "Back/NonMember/WeatherSearch";
	}
	
	

	
	@RequestMapping("/memberdetail/{no}")
	public String memberDetail(@PathVariable int no, @RequestParam(required=false, defaultValue="") String userid, Model model)  {
		
		
		/*조회수와 디테일 데이터*/
		nonmemberservice.storehit(no);
		StoreListDTO dto = nonmemberservice.detail(userid, no);
		model.addAttribute("dto", dto);
		System.out.println(dto.getUserNickName().getClass().getName());
			
		/*최근 본 목록*/
/*		nonmemberservice.view(no);
		model.addAttribute("no", no);*/
		
		/*리플 리스트*/
		List<ReviewListDTO> reply = nonmemberservice.replylist(no);
		model.addAttribute("reply", reply);
		
		
		/*리플 갯수*/
		int ReplyCount = nonmemberservice.replyCount(no);
		model.addAttribute("ReplyCount", ReplyCount);
		
		
		int totalupcount = nonmemberservice.storetotalupcount(no);
		model.addAttribute("totalupcount", totalupcount);
		
		int storeUpAction = nonmemberservice.storeupaction(userid, no);
		model.addAttribute("StoreUpAction", storeUpAction);
		
		log.info(" param data0....."+storeUpAction);
		return "Back/MemberService/StoreDetail";
	}
	
	
	@RequestMapping("/randomreco")
	public String randomReco(Model model) {
		StoreListDTO dto = nonmemberservice.randomreco();
		model.addAttribute("dto", dto);
				
		return "Back/NonMember/RandomReco";
	}

}