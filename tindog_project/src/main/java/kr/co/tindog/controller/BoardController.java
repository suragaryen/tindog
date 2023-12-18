package kr.co.tindog.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class BoardController {


	//http://localhost:2000/
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/home");
		return mav;
	}
	
	//http://localhost:2000/mypage/idealResult
	@RequestMapping("/mypage/idealResult")
	public ModelAndView idealResult() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/idealResult");
		return mav;
		
	}

	//http://localhost:2000/worldcup
	@RequestMapping("/worldcup")
	public ModelAndView ideal() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pages/worldcup");
		return mav;
		
	}

	
}
