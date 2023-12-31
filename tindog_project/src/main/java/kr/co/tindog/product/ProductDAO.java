package kr.co.tindog.product;

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
	
	public String MAINPHOTO(int UPRODUCT_NO) {
    	
    	return sqlSession.selectOne("product.MAINPHOTO", UPRODUCT_NO);
    }//MAINPHOTO() end
	
   public String PHOTO(int UPRODUCT_NO) {
    	
    	return sqlSession.selectOne("product.PHOTO", UPRODUCT_NO);
    }//PHOTO() end
	
	
	 public void delete(int UPRODUCT_NO) {
	    	sqlSession.delete("product.delete", UPRODUCT_NO);
	    	
	    }//delete() end
	 

		public void update(Map<String, Object> map) {
			
			sqlSession.update("product.update", map); 
			
		}//update() end
    
	
}//class end
