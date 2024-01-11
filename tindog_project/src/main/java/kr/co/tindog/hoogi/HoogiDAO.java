package kr.co.tindog.hoogi;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.tindog.wishlist.WishlistDTO;
;
@Repository
public class HoogiDAO {

	public HoogiDAO() {
		System.out.println("HoogiDAO()객체 생성됨");
	}//end
	
	@Autowired
	private SqlSession sqlSession;
	

	public List<Map<String, Object>> list(String nickname){
		return sqlSession.selectList("hoogi.list", nickname);
	}//list() end
	 
}
