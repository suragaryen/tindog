package kr.co.tindog.dbti;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DbtiCont {

	@Autowired
	DbtiDAO dbtiDao;
	
	@RequestMapping("/dbti")
	public ModelAndView dbti() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("layout/dbti/dbti");
		return mav;
	}
	
	@RequestMapping("")
	@ResponseBody
	public int dbtiInsert(@RequestParam String email) {
		DbtiDTO dbtiDto = new DbtiDTO();
		dbtiDto.setEmail(email);
		
		
		int cnt = dbtiDao.dbtiInsert(dbtiDto);
		
		return cnt;
	}
	
}
