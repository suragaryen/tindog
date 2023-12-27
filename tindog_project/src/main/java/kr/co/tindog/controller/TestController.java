package kr.co.tindog.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;
import kr.co.tindog.oauth.auth.PrincipalDetails;
import kr.co.tindog.oauth.model.User;

@Controller
public class TestController {

	public TestController() {
		System.out.println("TestController 생성");
	}
	
	//http://localhost:2000/test 
	//테스트용 

}
