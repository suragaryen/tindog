package kr.co.tindog.chat;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatRoomDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public String getNickname(String followemail) {
		return sqlSession.selectOne("chat.search", followemail);
	}
	
	public int chatRoomCheck(ChatRoomDTO dto) {
		return sqlSession.selectOne("chat.chatRoomCheck", dto);
	}
	
	public int chatRoomInsert(ChatRoomDTO dto) {
		return sqlSession.insert("chat.chatRoomInsert", dto);
	}
	
	public List<Map<String, Object>> chatList(String nickname) {
		return sqlSession.selectList("chat.roomList", nickname);
	}
}
