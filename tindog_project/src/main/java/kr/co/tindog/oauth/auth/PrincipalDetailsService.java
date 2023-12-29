package kr.co.tindog.oauth.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.co.tindog.oauth.model.User;
import kr.co.tindog.oauth.repository.UserRepository;

//시큐리티 설정에서 loginProcessingUrl("/login");
//login 요청이 오면 자동으로 UserDetailsService 타입으로 IoC되어 있는 loadByUserName 함수가 실행
/*
@Service
public class PrincipalDetailsService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User userEntitiy=userRepository.findByUsername(username);
		if(userEntitiy!=null) {
			return new PrincipalDetails(userEntitiy);
		}
		return null;
	}

	
	
}
*/