package com.bitcamp.TFDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class UserInfoDTO {
	private int UserNo;
	private String UserId;
	private String UserNickName;
	private String UserPw;
	private String UserName;
	private String UserEmail;
}
