package kr.co.tindog.member;

import java.util.List;
import java.util.Map;

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
	}//userInsert end
	
	public List<DogDTO> dogList(String email){
		return sqlSession.selectList("user.dogList", email);
	}//doglist end
	
	public int dogPicsInsert(PicDTO dto) {
		return sqlSession.insert("user.insertDogPics", dto);
	}//dogPicsInsert end
	
	public List<UserDTO> userList(String email){
		return sqlSession.selectList("user.userList", email);
	}//userList end
	
	public List<Map<String, Object>> followList(String email) {
		return sqlSession.selectList("user.followList", email);
	}
	
	public String nickDupCheck(String nickname) {
			return sqlSession.selectOne("user.nickDupCheck", nickname);
	}
	
	public String emailDupCheck(String email) {
		return sqlSession.selectOne("user.emailDupCheck", email);
}



}//class end
