package kr.co.tindog.dbti;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DbtiDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int dbtiInsert(DbtiDTO dbtiDto) {
		return sqlSession.insert("dbti.dbtiInsert", dbtiDto);
	}
	
}
