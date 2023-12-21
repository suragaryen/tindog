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
		
	
}
