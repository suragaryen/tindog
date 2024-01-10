package kr.co.tindog.hoogi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.tindog.product.ProductDAO;

@Controller
public class HoogiCont {

	public HoogiCont() {
		System.out.println("HoogiCont() 객체 생성됨");
	}//class end
	
	@Autowired
	HoogiDAO hoogiDao;	
	
	@RequestMapping("/hoogi/comment")
	public ModelAndView comment(HttpSession session) {
		
		String s_nickname=(String)session.getAttribute("s_nickname");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hoogi/comment");
	    mav.addObject("comment", hoogiDao.comment(s_nickname));
		return mav;
	}//list() end
	
}
