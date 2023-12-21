package kr.co.tindog.oauth.config;

import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig{
	
	//해당 메서드의 리턴되는 오브젝트를 IoC로 등록해준다.
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		
		http
			.csrf((csrf)->csrf.disable())
			.authorizeHttpRequests((requests)-> requests
					.requestMatchers(antMatcher("/user/**")).authenticated()
					.requestMatchers(antMatcher("/manager/**")).hasRole("MANAGER")
					.requestMatchers(antMatcher("/admin/**")).hasRole("ADMIN")
					.anyRequest().permitAll()
			)
			.formLogin((formlogin)-> formlogin
					.loginPage("/loginForm")
					.loginProcessingUrl("/login")
					.defaultSuccessUrl("/")
			);
			
			return http.build();
		
	}
	
}
