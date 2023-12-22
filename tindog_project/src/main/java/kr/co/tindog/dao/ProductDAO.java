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
	private SqlSession sqlSession;
	
	public void insert(Map<String, Object> map) {
		sqlSession.insert("product.insert", map);
	}//insert() end
	
	public List<Map<String, Object>> list(){
		return sqlSession.selectList("product.list");
	}//list() end
	
	public List<Map<String, Object>> search(String SUBJECT){
		return sqlSession.selectList("product.search", "%" + SUBJECT + "%");
	}
	
	public Map<String, Object> detail(int UPRODUCT_NO){
        return sqlSession.selectOne("product.detail", UPRODUCT_NO);
    }//detail() end
    
	
}//class end
