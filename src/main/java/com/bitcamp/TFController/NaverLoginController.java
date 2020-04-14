package com.bitcamp.TFController;

import java.io.IOException;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.TFDTO.UserDTO;
import com.bitcamp.TFService.NonMemberService;
import com.github.scribejava.core.model.OAuth2AccessToken;



@Controller
public class NaverLoginController {
	
	
	@Autowired
	public NonMemberService nonmemberservice;
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	this.naverLoginBO = naverLoginBO;
	}
	
	//로그인 첫 화면 요청 메소드
	@RequestMapping(value = "/naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		
	/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
	String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	
	//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
	//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
	
	System.out.println("네이버:" + naverAuthUrl);
	
	//네이버
	model.addAttribute("url", naverAuthUrl);
	return "Back/NonMember/login";
	}
	
	

	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
	System.out.println("여기는 callback");
	OAuth2AccessToken oauthToken;
	oauthToken = naverLoginBO.getAccessToken(session, code, state);
	
	//1. 로그인 사용자 정보를 읽어온다.
	apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	
	/** apiResult json 구조
	{"resultcode":"00",
	 "message":"success",
	 "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}
	}
	**/
	
	//2. String형식인 apiResult를 json형태로 바꿈
	JSONParser parser = new JSONParser();
	Object obj = parser.parse(apiResult);
	JSONObject jsonObj = (JSONObject) obj;
	
	//3. 데이터 파싱
	//Top레벨 단계 _response 파싱
	JSONObject response_obj = (JSONObject)jsonObj.get("response");
			 
		 //System.out.println(jsonObj.get("resultcode"));
		 //System.out.println(jsonObj.get("message"));
		 
	String message = (String)jsonObj.get("message");
	System.out.println("message="+message);
			
	if (message.equals("success")) {
		
		UserDTO dto=new UserDTO();
				
		String userId = (String)response_obj.get("id");
		String userNickname = (String)response_obj.get("nickname");
		String userEmail = (String)response_obj.get("email");
		String userName = (String)response_obj.get("name");
		System.out.println(userId);
		
		if(userId!=null)
		{
			
			int result=nonmemberservice.idCheck(userId);
			
			System.out.println(result);
			
			if(result==0) {
				
				dto.setUserId(userId);
				dto.setUserNickname(userNickname);
				dto.setUserEmail(userEmail);
				dto.setUserName(userName);
			
				nonmemberservice.naverjoin(dto);
				
				
				System.out.println("첫 인증해서 가입 완료");
			}else {
				
				UserDTO user = nonmemberservice.loginN(userId);
				session.setAttribute("nickname", user.getUserNickname());
				session.setAttribute("userId", user.getUserId());
				System.out.println("이미 인증해서 가입되어있음");
			}
		}else{		
		
		//response의 nickname값 파싱
		//String nickname = (String)response_obj.get("nickname");
		
		
			//4.파싱 닉네임 세션으로 저장
			session.setAttribute("nickname", userNickname); //세션 생성
			model.addAttribute("result", apiResult);
		
		}
		return "Back/NonMember/Main";
	}
	return "redirect:/naverlogin";
}
	

	/*public String UserRoot(UserDTO dto) {
		nonmemberservice.userRoot(dto);
		return "redirect:/login";
	}*/
	
	
	//로그아웃
	@RequestMapping(value = "/Logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session)throws IOException {
	
	session.invalidate();
	return "redirect:/naverlogin";

	}
}