package kr.co.tindog.hoogi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping("/comment/{nickname}")
	public ModelAndView list(@PathVariable String nickname, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		// String sellerNickname=(String)session.getAttribute("nickname");
		
		mav.setViewName("hoogi/comment");
	    mav.addObject("list", hoogiDao.list(nickname));
		return mav;
	}//list() end
	
}
