package kr.co.tindog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ProductCont {
       
	
	public ProductCont() {
		System.out.println("ProductCont생성됨");
	}//class end
	
	
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pages/list");
		return mav;
	}//list end
	
	
}
