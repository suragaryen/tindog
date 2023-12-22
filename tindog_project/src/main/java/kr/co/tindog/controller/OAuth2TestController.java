package kr.co.tindog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tindog.oauth.auth.PrincipalDetails;
import kr.co.tindog.oauth.repository.UserRepository;

/*
 	스프링 시큐리티
 	자기만의 세션을 두고 있음(세션 안에 시큐리시티 세션이 있다는거)
 	시큐리티와 관련된 세션에 들어갈 수 있는 타입은 Authentication 객체 밖에 없음
 	우리가 필요할 때마다 컨트롤러에서 DI(의존성주입) 할 수 있음
 	
 	Authentication에는 2가지 타입이 있을 수 있는데
 	첫 번째가 UserDetails -> 일반 로그인
 	두 번째가 OAuth2User  -> 소셜로그인
 	둘 다 유저 오브젝트 포함하지 않음
 	
 	어떨 때는 userdetails, 다른 때는 oauth2user에서 찾아야하니까 처리하기 복잡해져서
 	PrincipalDetails에 다 implement해서 부모로 묶어버림
*/

@Controller
public class OAuth2TestController {

	@Autowired UserRepository userRepository;
	
	@Autowired BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/test/login")
	public @ResponseBody String testLogin(Authentication authentication
			, @AuthenticationPrincipal PrincipalDetails userDetails) {//DI(의존성 주입)
		System.out.println("/test/login=================");
		PrincipalDetails principalDetails=(PrincipalDetails)authentication.getPrincipal();
		System.out.println("authentication:"+principalDetails.getUser());
		
		System.out.println("userDetails:"+userDetails.getUser());
		return "세션정보확인하기";
	}
	
	@GetMapping("/test/oauth/login")
	public @ResponseBody String testOAuthLogin(
			Authentication authentication,
			@AuthenticationPrincipal OAuth2User oauth) {//DI(의존성 주입)
		System.out.println("/test/oauth/login=================");
		OAuth2User oAuth2User=(OAuth2User)authentication.getPrincipal();
		System.out.println("authentication:"+oAuth2User.getAttributes());
		System.out.println("oauth2User:"+oauth.getAttributes());
		
		return "OAuth 세션정보확인하기";
	}
	
	@GetMapping("/user")
	public @ResponseBody String user(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails:"+principalDetails.getUser());
		return "user";
	}
	
}
