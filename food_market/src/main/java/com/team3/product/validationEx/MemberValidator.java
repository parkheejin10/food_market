package com.team3.product.validationEx;



import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@SuppressWarnings("deprecation")
public class MemberValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> arg0){
		return Member.class.isAssignableFrom(arg0);
	}
	
	@Override
	public void validate(Object obj, Errors errors){
		System.out.println("--------validate() 호출 ------------");
		Member member = (Member)obj;
		
//		String memName = member.getName();
//		if(memName == null || memName.trim().isEmpty()){
//			System.out.println("회원 이름을 입력하세요..");
//			errors.rejectValue("name","입력시 오류 발생");
//		}//if()
		
//		String memId = member.getId();
//		if(memId == null || memId.trim().isEmpty()){
//			System.out.println("회원 아이디를 입력하세요...");
//			errors.rejectValue("id","입력시 오류 발생");
//		}//if()

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "입력 오류");
		
		int memNo = member.getMemNo();
		if(memNo == 0){
			System.out.println("주민번호를 입력하세요...");
			errors.rejectValue("memNo", "입력시 오류 발생");
		}//if()
	}
}
