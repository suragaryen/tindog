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
		mav.setViewName("layout/test2");
		return mav;
	}

	@RequestMapping("/findIdpw")
	public ModelAndView find() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/member/findIdpw");
		return mav;
	}
	
	@RequestMapping("/findidResult")
	@ResponseBody
	public ModelAndView findidResult(@RequestParam String member_name) {
		ModelAndView mav=new ModelAndView();
		
		List name=loginDAO.findid(member_name);
		
		System.out.println(name);
		
		if(name.isEmpty()||name==null){		
			mav.setViewName("layout/member/findidResultFail");
			return mav;
		}else{
			mav.addObject("list", name);
			mav.setViewName("layout/member/findidResult");				
		}
		return mav;
	}
	
	@RequestMapping("/findpwResult")
	@ResponseBody
	public ModelAndView findpwResult(@ModelAttribute FindDTO findDto, @RequestParam String member_name, @RequestParam String member_email) {
		ModelAndView mav=new ModelAndView();
	
		findDto.setName(member_name);
		findDto.setEmail(member_email);
			
		FindDTO findpw=loginDAO.findpw(findDto);
		
		if(findpw!=null) {			
			
			char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
	                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
			String password="";
			int idx=0;
			for(int i=0; i<10; i++) {
				idx=(int)(charSet.length*Math.random());
				password+=charSet[idx];
			}
			
			findDto.setPassword(password);
			int updatepw=loginDAO.pwUpdate(findDto);
			
			mav.addObject("email", findDto.getEmail());
			mav.addObject("password", password);
			mav.setViewName("layout/member/findpwResult");				
		}else {
			mav.setViewName("layout/member/findpwResultFail");
			return mav;
		}
		
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
		session.removeAttribute("s_gumqty");
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
		        System.out.println((String)session.getAttribute("s_grade"));
		        session.setAttribute("s_gumqty", result.getGumqty());
		        System.out.println("로그인 성공");
		        System.out.println(result);
		        mav.setViewName("layout/home");
		    } else {
		        // 로그인 실패 시
		        System.out.println("로그인 실패");
		        mav.setViewName("layout/member/loginFail");
		    }
		    return mav;
	}//loginProc end
	
	
	
	
	
	
	
}//class end
