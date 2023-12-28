package kr.co.tindog.login;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.tindog.member.MemberDAO;

@RestController
public class LoginCont {
	
	@Autowired
	LoginDAO loginDAO;
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/login");
		
		return mav;
	}//login end
	
	@RequestMapping("/logOut")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("s_email");
		session.removeAttribute("s_nickname");
		session.removeAttribute("s_grade");
		mav.setViewName("layout/home");
		
		return mav;
	}//logout end
	
	@RequestMapping(value = "/loginResult", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView loginProc(@ModelAttribute LoginDTO loginDTO, 
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		//System.out.println(loginDAO.login(loginDTO));
		//System.out.println(loginDAO.login(loginDTO).getNickna
		
		if(loginDAO.login(loginDTO).getEmail() != null) {
			
			session.setAttribute("s_email", loginDAO.login(loginDTO).getEmail());
			session.setAttribute("s_nickname", loginDAO.login(loginDTO).getNickname());
			session.setAttribute("s_grade", loginDAO.login(loginDTO).getMemgrade());
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
			
		}
		
		mav.setViewName("layout/home");
		return mav;
	}//loginProc end
	
	
	
	
	
	
	
}//class end
