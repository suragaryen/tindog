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
	
	public int optionInsert(DogDTO dto) {
		return sqlSession.insert("worldcup.optionInsert", dto);
	}
	
	public List<Map<String, Object>> worldcupOptionList(DogDTO dto){
		
		return sqlSession.selectList("worldcup.worldcupOptionList", dto);
		
	}

}
