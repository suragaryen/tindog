package kr.co.tindog.oauth.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import kr.co.tindog.oauth.auth.PrincipalDetails;
import kr.co.tindog.oauth.model.User;
import kr.co.tindog.oauth.provider.KakaoUserInfo;
import kr.co.tindog.oauth.provider.NaverUserInfo;
import kr.co.tindog.oauth.provider.OAuth2UserInfo;
import kr.co.tindog.oauth.repository.UserRepository;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	//소셜로그인되는 애들로부터 받은 userRequest데이터에 대한 후처리되는 함수
	//함수 종료시 @AuthenticationPrincipal 어노테이션 만들어진다
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException{
		System.out.println("getClientRegistration:"+userRequest.getClientRegistration());//우리 서버의 정보 registrationID로 어떤 OAuth로 로그인했는지 확인가능
		System.out.println("getAccessToken:"+userRequest.getAccessToken());
		System.out.println("getAccessToken:"+userRequest.getAccessToken().getTokenValue());//getAttributes에 토큰에 대한 정보 다 들어있어서 사실 필요없음
		
		OAuth2User oAuth2User=super.loadUser(userRequest);
		//소셜로그인 버튼 클릭 -> 소셜로그인창 -> 로그인 완료 -> code 리턴 (OAuth-Client 라이브러리) -> AccessToken 요청
		//userRequest정보 -> loadUser함수  호출-> 소셜로그인 소셜로부터 회원프로필 받아옴
		System.out.println("getAttributes:"+oAuth2User.getAttributes());//이 정보로 강제 회원가입 시킬거임		
	
		//회원가입 진행
		OAuth2UserInfo oAuth2UserInfo=null;
		if(userRequest.getClientRegistration().getRegistrationId().equals("kakao")) {
			System.out.println("카카오 로그인 요청");
			oAuth2UserInfo=new KakaoUserInfo(oAuth2User.getAttributes());
		}else if(userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
			System.out.println("네이버 로그인 요청");
			oAuth2UserInfo=new NaverUserInfo(oAuth2User.getAttributes());
		}else {
			System.out.println("우리는 카카오와 네이버 로그인만 지원해요 :)");
		}
		/*
		String provider = userRequest.getClientRegistration().getRegistrationId();//kakao or naver
		String providerId = oAuth2User.getAttribute("sub");
		String username=provider+"_"+providerId;//kakao_1234567
		String email= oAuth2User.getAttribute("email");
		String role="user";
		*/
		
		String provider=oAuth2UserInfo.getProvider();
		String providerId=oAuth2UserInfo.getProviderId();
		String username=provider+"_"+providerId;
		String email=oAuth2UserInfo.getEmail();
		String role="user";
		
		User userEntity=userRepository.findByUsername(username);
		
		if(userEntity==null) {
			System.out.println("소셜로그인 최초");
			userEntity=User.builder()
					.username(username)					
					.email(email)
					.role(role)
					.provider(providerId)
					.providerID(providerId)
					.build();
			userRepository.save(userEntity);
		}else {
			System.out.println("로그인을 이미 한 적이 있습니다. 당신은 자동회원가입이 되어있습니다.");
		}
	
		return new PrincipalDetails(userEntity, oAuth2User.getAttributes());
	}
	
}
