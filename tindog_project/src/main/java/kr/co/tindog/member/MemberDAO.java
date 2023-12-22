package kr.co.tindog.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	

	
	public int dogInsert(DogDTO dto) {
		return sqlSession.insert("user.insertDog", dto);
	}//insert() end
	
	public int userInsert(UserDTO dto) {
		return sqlSession.insert("user.insertUser", dto);
	}
	
	public List<DogDTO> dogList(String email){
		return sqlSession.selectList("user.dogList", email);
	}//doglist end
	

}//dao end
