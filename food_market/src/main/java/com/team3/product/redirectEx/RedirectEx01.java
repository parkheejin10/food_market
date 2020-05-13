package com.team3.product.redirectEx;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectEx01 {
	
	/**
	 * redirect: 키를 이용 페이지 이동
	 * */
	
	@RequestMapping("/loginForm")
	public String loginform(){
		return "loginId";
	}
	
	
	@RequestMapping("/memberConfirm")
	public String memberRedirect(HttpServletRequest req, Model model){
		String id = req.getParameter("id");
		
		if(id.equals("test")){
			return "redirect:memberOk";
		}
		
		return "redirect:memberFail";
	}//memberRedirect()
	
	
	@RequestMapping("/memberOk")
	public String memberOk(){
		return "member/memberOk";
	}
	
	@RequestMapping("/memberFail")
	public String memberFail(){
		
		return "member/memberFail";
	}
	
	
	@RequestMapping("/joinURL")
	public String joinUrl(Model model){
		return "redirect:http://localhost:9090/redirectEx/joinURL.jsp";
		
	}
	
	
	
}
