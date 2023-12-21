package kr.co.tindog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	public LoginController() {
		System.out.println("LoginController 생성");
	}
	
	//http://localhost:2000/login 
	//로그인 페이지 
	@GetMapping("login")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/login");
		return mav;
	}
	
}