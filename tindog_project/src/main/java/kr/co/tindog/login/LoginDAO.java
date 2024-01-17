package kr.co.tindog.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.tindog.login.LoginDTO;

@Repository
public class LoginDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public LoginDTO login(LoginDTO loginDto) {
		return sqlSession.selectOne("login.login", loginDto);
	}
}//class end
