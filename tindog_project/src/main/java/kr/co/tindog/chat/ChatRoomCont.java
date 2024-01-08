package kr.co.tindog.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@PostMapping("/chatList/insert")
	@ResponseBody
	public int chatRoomInsert(@RequestParam String followNickname, HttpSession session) {
		
		try {
			ChatRoomDTO chatRoomDto = new ChatRoomDTO();
			chatRoomDto.setNickname_from((String)session.getAttribute("s_nickname"));
			chatRoomDto.setNickname_to(followNickname);
			chatRoomDto.setTot_nickname(followNickname + (String)session.getAttribute("s_nickname"));
			System.out.println(chatRoomDto);
			
			int check = chatRoomDao.chatRoomCheck(chatRoomDto);
			if(check==0) {
				int cnt = chatRoomDao.chatRoomInsert(chatRoomDto);
				
				return cnt;
			}else {
				return 0;
			}
					
		} catch (Exception e) {
		    e.printStackTrace();
		    return -1; // 예외가 발생한 경우 -1을 반환하거나 적절한 에러 코드를 반환하세요.
		}
	}
}
