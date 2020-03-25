package com.bitcamp.TFService;

import com.bitcamp.TFDTO.UserInfoDTO;

public class TFServiceImple implements TFService{
	
	private final NonMemberService nonmemberservice;
	
	public TFServiceImple(NonMemberService nonmemberservice) {
		this.nonmemberservice = nonmemberservice;
	}
	
	@Override
	public void register(UserInfoDTO userDTO) throws Exception {
		nonmemberservice.register(userDTO);
	}
}