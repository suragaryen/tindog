package kr.co.tindog.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	public ProductDAO() {
		System.out.println("ProductDAO()객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	
}//class end
