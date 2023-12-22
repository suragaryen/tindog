package kr.co.tindog.member;

import java.io.File;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@RestController
public class MemberCont {

	@Autowired
	MemberDAO memberDao;
	
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/member/login");
		return mav;
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/member/register");
		return mav;
		
	}
	
	@RequestMapping("/userInfo")
	public ModelAndView userInfo() {
		//String nickname = "moon567";
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/mypage/userInfo");
		//mav.addObject("userInfo",memberDao.userInfo(nickname));
		
		//System.out.println(memberDao.userInfo(nickname));
		
		return mav;	
	}
	
	@RequestMapping("/dogInfo")
	public ModelAndView dogInfo() {
		String email = "ahjf@naver.com";
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/mypage/dogInfo");
		mav.addObject("list", memberDao.dogList(email));
	System.out.println(memberDao.dogList(email));
		return mav;
	}
	
	
	@PostMapping("/userInsert")
	public String insert(@ModelAttribute DogDTO dogDto,
			@ModelAttribute UserDTO userDto,
            @RequestParam MultipartFile mainphotofile,
            @RequestParam MultipartFile userphotofile,
            HttpServletRequest req) {
		
    	String mainphotofilename = "-";
    	long mainphotofilesize = 0;
    	
    	if (mainphotofile != null && !mainphotofile.isEmpty()) {
    		mainphotofilename = mainphotofile.getOriginalFilename();
    		mainphotofilesize = mainphotofile.getSize();
    	    try {
    	        ServletContext application = req.getSession().getServletContext();
    	        String path = application.getRealPath("/storage"); // 실제 물리적인 경로

    	        // 파일 경로와 파일명을 올바르게 합쳐서 파일 객체 생성
    	        File file = new File(path, mainphotofilename);

    	        // 파일 저장
    	        mainphotofile.transferTo(file);
    	        //System.out.println(path);
    	    } catch (Exception e) {
    	        System.out.println(e);
    	    }
    	}
    	
    		//dogDTO에 파일 이름 저장
    		//System.out.println(mainphotofilename);
    		dogDto.setMainphoto(mainphotofilename);
    		//System.out.println(dogDto.toString());
    		memberDao.dogInsert(dogDto);
    		
        	String userphotofilename = "-";
        	long userphotofilesize = 0;
        	
        	if (userphotofile != null && !userphotofile.isEmpty()) {
        		userphotofilename = userphotofile.getOriginalFilename();
        		userphotofilesize = userphotofile.getSize();
        	    try {
        	        ServletContext application = req.getSession().getServletContext();
        	        String path = application.getRealPath("/storage"); // 실제 물리적인 경로

        	        // 파일 경로와 파일명을 올바르게 합쳐서 파일 객체 생성
        	        File file = new File(path, userphotofilename);

        	        // 파일 저장
        	        userphotofile.transferTo(file);
        	        //System.out.println(path);
        	    } catch (Exception e) {
        	        System.out.println(e);
        	    }
        	}
        	
        		//dogDTO에 파일 이름 저장
        		//System.out.println(userphotofilename);
        		userDto.setUserphoto(userphotofilename);
        		//System.out.println(userDto.toString());
        		memberDao.userInsert(userDto);
		
		return null;
		
	}//insert end
	
	

}//MemberController end
