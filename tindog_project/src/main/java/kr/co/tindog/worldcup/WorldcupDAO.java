package kr.co.tindog.worldcup;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorldcupDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<Map<String, Object>> worldcupImgList(String email) {
		
		return sqlSession.selectList("worldcup.worldcupImgList", email);
		
	}//worldcupImgLIst end
	
	

}
