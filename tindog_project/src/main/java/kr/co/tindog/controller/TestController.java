package kr.co.tindog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	public TestController() {
		System.out.println("TestController 생성");
	}
	
	//http://localhost:2000/test 
	//테스트용 
	@GetMapping("test")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/test");
		return mav;
	}
		
	/*
		JWT = JSON WEB TOKEN
		
		중요 : 왜 사용됌? 어따 씀?
		
		web			get방식->			서버
		---		www.naver.com		---
	   |   |					   |메소드 |
	   |   |					   |    |
	 	---							---
				<-html파일
					header
				  ---------
				| 쿠키: 세션ID  |  
				|           |  
				  ---------
		최초 요청시 쿠키 생성
		두번째 요청부터는 세션 아이디를 데리고 감
		
		세션 문제점을 해결하기 위해 JWT를 사용!
		
	*/
}
