package kr.co.tindog.report;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReportListDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<Map<String, Object>> list() {
		return sqlSession.selectList("report.list");
	}
	
	public List<Map<String, Object>> list2() {
		return sqlSession.selectList("report.list2");
	}
}
