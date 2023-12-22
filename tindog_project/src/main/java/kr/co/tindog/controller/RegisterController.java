package kr.co.tindog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

	public RegisterController() {
		System.out.println("RegisterController 생성");
	}
	
	//http://localhost:2000/register 
	//회원가입 페이지 
	@GetMapping("register")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/register");
		return mav;
	}
		
	
}