package kr.co.tindog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {

	public MypageController() {
		System.out.println("Mypage 생성");
	}
	
	//http://localhost:2000/mypage 
	//마이페이지 페이지 
	@GetMapping("mypage")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/mypage");
		return mav;
	}
		
	
}