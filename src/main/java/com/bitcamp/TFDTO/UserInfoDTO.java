package com.bitcamp.TFDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class UserInfoDTO {
	private int UserNo;
	private String UserId;
	private String UserNick;
	private String UserPwd;
	private String UserPhone;
	private String UserEmail;
	private String UserGrade;
}
