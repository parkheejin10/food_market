package com.team3.member.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team3.member.dto.MemDTO;
import com.team3.member.service.MemService;

@Controller
public class MemController {
	private static final Logger logger = LoggerFactory.getLogger(MemController.class);
	
	@Inject
	private MemService service;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		
//		return "index";
//	}
	
//	member list 이동, 출력
	@RequestMapping(value="/member/list.do", method=RequestMethod.GET)
	public String select(Model model) throws Exception {
		List<MemDTO> memberList = service.MemberList();
		model.addAttribute("memberList",memberList);
		
		return "member/list";
	}
	
//	회원가입 페이지 이동
	@RequestMapping("/member/join.do")
	public String join() {
		return "/member/join";
	}
		

//	회원가입 후 메인 페이지 이동
	@RequestMapping(value="/member/join.do", method=RequestMethod.POST)
	public String join(MemDTO mdto) throws Exception {
		service.MemberJoin(mdto);
		return"redirect:/";
	}
	
//	로그인 페이지 이동
	@RequestMapping("/member/login.do")
	public String login() {
		return "/member/login";
	}
	
//	로그인 및 세션 생성
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public String login(MemDTO mdto, HttpSession session, Model model) throws Exception{
		String page=null;
		
		boolean result = service.MemberLogin(mdto, session);
		
		if (result) { // 로그인 후 메인 이동
			page="redirect:/";
		}else { // 로그인 실패시 실패 메시지 전달
			page="/member/login";
			model.addAttribute("msg", "loginCancel");
		}
		return page;
	}
	
//	로그아웃( 세션 소멸 )
	@RequestMapping("/member/logout.do")
	public String logout(HttpSession session) {
		service.MemberLogout(session);
		return "redirect:/";
	}
	
//	회원 정보 페이지 이동 및 정보 출력
	@RequestMapping(value="/member/info.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String info(HttpSession session, MemDTO mdto, Model model) throws Exception {
		String page=null;
		
		mdto.setMb_id(session.getAttribute("mb_id").toString());
		
		MemDTO mdto2 = service.MemberInfo(mdto);
		
		model.addAttribute("memInfo", mdto2);
		page="/member/info";
		
		return page;
	}
	
//	회원 정보 수정
	@RequestMapping(value="/member/modify.do", method={RequestMethod.POST,RequestMethod.GET})
	public String modify(MemDTO mdto, Model model) throws Exception {
		String page=null;
		System.out.println(service.MemberCheck(mdto));
//		회원 ID, PW 체크
		if (service.MemberCheck(mdto)) {
//			비밀번호 수정 유무 
			if (mdto.getMb_pw2()=="") {
				service.MemberModify_NoPW(mdto); // 회원 정보 수정 서비스
			}else {
				service.MemberModfiy(mdto); // 회원 정보 수정 서비스(비밀번호 포함)
			}
			
			page="redirect:/";
			
		}else {// ID, PW 불일치 시 result메시지 전달
			MemDTO mdto2 = service.MemberInfo(mdto);
			model.addAttribute("memInfo",mdto2);
			model.addAttribute("msg","cancel");
			page="member/info";
		}
		return page;
	}
	
//	회원 탈퇴
	@RequestMapping("/member/delete.do")
	public String delete(MemDTO mdto, HttpSession session, Model model) throws Exception {
		String page=null;
		if (service.MemberCheck(mdto)) {
			service.MemberLogout(session);
			service.MemberDelete(mdto);
			page="redirect:/";
		} else {
			page="member/delete";
			model.addAttribute("msg", "Cancle");
		}
		
		return page;
	}
	
	
}


