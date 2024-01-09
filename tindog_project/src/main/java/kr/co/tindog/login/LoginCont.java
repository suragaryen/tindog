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
	
	@RequestMapping("/tt")
	public ModelAndView test() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/test");
		return mav;
	}
	
	//http://localhost:2000/login 
	//로그인 페이지 
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/member/login");
		return mav;
	}
	
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
		
		 LoginDTO result = loginDAO.login(loginDTO);
		
		    if(result != null && result.getEmail() != null) {
		        // 로그인 성공 시
		        session.setAttribute("s_email", result.getEmail());
		        session.setAttribute("s_nickname", result.getNickname());
		        session.setAttribute("s_grade", result.getMemgrade());
		        System.out.println("로그인 성공");
		        mav.setViewName("layout/home");
		    } else {
		        // 로그인 실패 시
		        System.out.println("로그인 실패");
		        mav.setViewName("layout/member/loginFail");
		    }
		    return mav;
	}//loginProc end
	
	
	
	
	
	
	
}//class end
