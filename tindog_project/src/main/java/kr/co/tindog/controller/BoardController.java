package kr.co.tindog.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class BoardController {

	@RequestMapping("/") //@Controller와 @ResponseBode를 합친 것과 같은 역할을 하며 JSON, XML 또는 일반텍스트와 같은 다양한 유형의 응답을 생
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/home");
		return mav;
		
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/login");
		return mav;
		
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/register");
		return mav;
		
	}
}//class
