package kr.co.tindog.oauth.config;

import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

import org.springframework.security.config.annotation.web.configurers.oauth2.client.OAuth2LoginConfigurer.UserInfoEndpointConfig;

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
	

	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;
	

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
					.loginPage("/login")
					.loginProcessingUrl("/login")
					.defaultSuccessUrl("/")
			)
			.oauth2Login((oauth)-> oauth
					.loginPage("/login")
					.userInfoEndpoint(UserInfoEndpointConfig -> UserInfoEndpointConfig
							.userService(principalOauth2UserService)					
					)					

			)
			.logout((logout->logout
				.logoutSuccessUrl("/")	
			)
		);			
			
			return http.build();
		
	}
	
}
