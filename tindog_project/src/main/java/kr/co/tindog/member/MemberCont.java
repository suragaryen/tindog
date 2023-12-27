package kr.co.tindog.member;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	
	@RequestMapping("/socialregister")
	public ModelAndView social(@AuthenticationPrincipal OAuth2User oAuth2User) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/member/register_social");
		System.out.println(oAuth2User.toString());
		return mav;
	}
	
	@RequestMapping("/userInfo")
	public ModelAndView userInfo() {
		String email = "itwill@itwill.co.kr";
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/mypage/userInfo");
		mav.addObject("list", memberDao.userList(email));
		System.out.println(memberDao.userList(email));
		return mav;	
	}
	
	@RequestMapping("/dogInfo")
	public ModelAndView dogInfo() {
		String email = "itwill@itwill.co.kr";
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/mypage/dogInfo");
		mav.addObject("list", memberDao.dogList(email));
	System.out.println(memberDao.dogList(email));
		return mav;
	}
	
	
	@PostMapping("/userInsert")
	public String insert(@ModelAttribute DogDTO dogDto,
			@ModelAttribute UserDTO userDto,
			@ModelAttribute PicDTO picDto,
            @RequestParam MultipartFile mainphotofile,
            @RequestParam MultipartFile userphotofile,
            MultipartHttpServletRequest mtfRequest,//사진 한꺼번에 여러개 받기 
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
        		
        		
        		/////////////////////////////////////////////////////////////////////////////////////
        		
        		//기타 강아지 사진 사진 테이블에 저장 
        		
        	    // 각 파일 이름을 저장할 리스트
        	    List<String> picNames = new ArrayList<>();
        		
        		List<MultipartFile> dPicsFile = mtfRequest.getFiles("dPics");
        		// 각 파일 이름과 저장된 물리적인 경로를 저장할 맵
        	    Map<String, String> picPaths = new HashMap<>();

        	    // 파일 개수가 3개 이하일 때만 처리
        	    if (dPicsFile != null && dPicsFile.size() <= 3) {
        	    	
        	        // 파일 이름을 DTO에 저장 및 물리적인 경로에 파일 저장
        	        for (int i = 0; i < dPicsFile.size(); i++) {
        	        	
        	            String fieldName = "pic" + (i + 1); // 필드 이름 생성 (pic1, pic2, pic3)
        	            MultipartFile file = dPicsFile.get(i);
        	            String fileName;

        	            // 파일이 존재하는 경우 실제 파일 이름 사용, 없는 경우 "-"으로 설정
        	            if (file.isEmpty()) {
        	            	
        	                fileName = "-";
        	                
        	            } else {
        	            	
        	                fileName = file.getOriginalFilename();

        	                // 파일 이름을 DTO 필드에 저장
        	                switch (fieldName) {
        	                    case "pic1":
        	                        picDto.setPic1(fileName);
        	                        break;
        	                    case "pic2":
        	                        picDto.setPic2(fileName);
        	                        break;
        	                    case "pic3":
        	                        picDto.setPic3(fileName);
        	                        break;
        	                }

        	                try {
        	                    ServletContext application = req.getSession().getServletContext();
        	                    String path = application.getRealPath("/storage"); // 실제 물리적인 경로

        	                    // 파일 경로와 파일명을 올바르게 합쳐서 파일 객체 생성
        	                    File targetFile = new File(path, fileName);

        	                    // 파일 저장
        	                    file.transferTo(targetFile);

        	                    // 파일이 정상적으로 저장된 경우 경로를 맵에 저장
        	                    picPaths.put(fieldName, targetFile.getAbsolutePath());
        	                } catch (IOException e) {
        	                    e.printStackTrace();
        	                    // 파일 저장 중 오류 발생 시 처리할 내용
        	                }
        	            }
        	        }
        	    }

        	    // 파일 경로 맵 활용 예시
        	    for (Map.Entry<String, String> entry : picPaths.entrySet()) {
        	        System.out.println("Field Name: " + entry.getKey() + ", File Path: " + entry.getValue());
        	        // 파일 경로 출력 또는 다른 작업 수행
        	    }

        	    memberDao.dogPicsInsert(picDto);
        	
		
		return null;
		
	}//insert end
	
	

}//MemberController end