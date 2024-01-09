package kr.co.tindog.wishlist;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.tindog.wishlist.WishlistDTO;
import kr.co.tindog.wishlist.WishlistDAO;

@Controller
@RequestMapping("/layout")
public class WishlistCont {
	
	public WishlistCont() {
		System.out.println("WishlistCont() 객체 생성됨");
	}

	@Autowired
	WishlistDAO wishlistDao;
	
	@PostMapping("/insert")
	public String wishlistInsert(@ModelAttribute WishlistDTO wishlistDto, HttpSession session) {
		
		// wishlistDto.setEMAIL("moon@naver.com");
		wishlistDto.setEMAIL((String)session.getAttribute("s_email"));
		
		wishlistDao.wishlistInsert(wishlistDto);
		
		return "redirect:/layout/product/wishlist"; //찜목록 페이지
			
	}//wishlistInsert() end	
	
	
	@RequestMapping("/wishlist")
	public ModelAndView list(HttpSession session) {
		
		// String s_EMAIL="moon@naver.com";
		String s_EMAIL = (String)session.getAttribute("s_email");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/product/wishlist");
		mav.addObject("list", wishlistDao.wishlistList(s_EMAIL));
		return mav;
	}//wishlist() end

	
	@GetMapping("/delete")
	public String delete(String WISHLIST_NO, HttpSession session) {
	
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("no", WISHLIST_NO);
		// map.put("s_EMAIL", "moon@naver.com");
		map.put("s_EMAIL", (String)session.getAttribute("s_email"));
		wishlistDao.WishlistDelete(map);
		return "redirect:/layout/product/wishlist";
	}//delete() end
	
	
}
