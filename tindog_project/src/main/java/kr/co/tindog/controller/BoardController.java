package kr.co.tindog.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class BoardController {

	public BoardController() {
		System.out.println("BoardController 생성됨");
	}
	
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/home");
		return mav;
		
	}
	
}
