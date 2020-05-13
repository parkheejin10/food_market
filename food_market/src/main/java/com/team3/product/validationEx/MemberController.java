package com.team3.product.validationEx;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/memberForm")
	public String memberForm(){
		return "member/memInput";
	}
	
	@RequestMapping("/inputOk")
	public String inputOk(@ModelAttribute("member") @Valid Member member, BindingResult result){
		
		String viewName = "memberOk";	
		
		//Validator 생성
		MemberValidator mValidator = new MemberValidator();
		mValidator.validate(member, result);
		
		if(result.hasErrors()){
//			return "redirect:memberForm";
			viewName="member/memInput";
		}
		//return "memberOk";
		return viewName;
	}
	
//	@InitBinder
//	protected void initBinder(WebDataBinder binder){
//		binder.setValidator(new MemberValidator());
//	}
	
	
}
