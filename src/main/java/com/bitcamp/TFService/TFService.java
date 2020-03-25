package com.bitcamp.TFService;

import com.bitcamp.TFDTO.UserInfoDTO;

public interface TFService {
	
	void register(UserInfoDTO userDTO) throws Exception;
}
