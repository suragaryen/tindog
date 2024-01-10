package kr.co.tindog.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@RestController
public class ChatRoomCont {
	
	@Autowired
	ChatRoomDAO chatRoomDao;
	
//	@GetMapping("/chatRoomCheck/{followemail}")
//	public ModelAndView chatRoomCheck(@PathVariable String followemail, HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		String nickname_to = chatRoomDao.getNickname(followemail);
//		session.setAttribute("c_nickname_to", nickname_to);
//		mav.setViewName("layout/chat/chatRoomCheck");
//		return mav;
//	}
	
	@RequestMapping("/chatList")
	public ModelAndView chatList(HttpSession session) {
		String nickname = "%" + (String)session.getAttribute("s_nickname") + "%"; 
		ModelAndView mav = new ModelAndView();
		System.out.println(nickname);
		mav.setViewName("layout/mypage/chatList");
		mav.addObject("list", chatRoomDao.chatList(nickname));
		System.out.println(chatRoomDao.chatList(nickname));
		return mav;
	}
	
}
