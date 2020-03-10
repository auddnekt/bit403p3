package com.bitcamp.TFService;

import org.springframework.beans.factory.annotation.Autowired;

import com.bitcamp.TFmapper.TFmapper;

public class NonMemberServiceImple implements NonMemberService{

	@Autowired
	private TFmapper mapper;
	
}