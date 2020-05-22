package com.team3.member.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team3.member.dto.MemDTO;
import com.team3.member.service.MemService;

@RestController
public class Controller {
	@Inject
	private MemService service;
	
//	@RequestMapping(value="member/idCheck", method=RequestMethod.POST)
//	public String idCheck(MemDTO mdto) throws Exception{
//		String ck_id=service.idCheck(mdto);
//		
//		return ck_id;
//	}
	
	@RequestMapping(value="member/idCheck", method=RequestMethod.POST)
	public ResponseEntity<String> idCheck(MemDTO mdto) throws Exception{
		ResponseEntity<String> entity = null;
		String ck_id=service.idCheck(mdto);
		entity = new ResponseEntity<String>(ck_id ,HttpStatus.OK);
		System.out.println(entity);
		return entity;
	}
	
	
}
