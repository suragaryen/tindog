package kr.co.tindog.management;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kr.co.tindog.oauth.model.*;
import kr.co.tindog.worldcup.WorldcupDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.oauth2.client.userinfo.*;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import kr.co.tindog.dbti.DbtiDAO;
import kr.co.tindog.dbti.DbtiDTO;
import kr.co.tindog.oauth.config.PrincipalOauth2UserService;

@RestController
public class ManagementCont {
	
	@Autowired
	ManagementDAO managementDao;
	
	@RequestMapping("/management")
	public ModelAndView management(HttpServletRequest req, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		String m_email = (String)session.getAttribute("s_email");
		
		mav.setViewName("layout/management");
		
		int Rowcnt = managementDao.totalRowCount(m_email);
		
		// 페이징
		int Perpage   = 5;	//페이지당 
		int pagelist = 5;
		
		// 현재 페이지
		String pageNum = req.getParameter("pageNum");
		if(pageNum == null) {pageNum = "1";}
		int currentpage = Integer.parseInt(pageNum);		
		
		int startrow    = (currentpage - 1)*Perpage +1;	
		int endrow		= currentpage * Perpage;			
		int start =startrow-1;//
  		
  		// 페이지 수
		double totcnt = (double)Rowcnt / Perpage; 
		int totalPage = (int)Math.ceil(totcnt);				
		
		
		double dpage = (double)currentpage / pagelist;	
		int Pages	  = (int)Math.ceil(dpage) - 1;			
		int Pagestart = Pages * pagelist + 1;			
		int Pageend	  = Pagestart + pagelist -1;
		
        List<Map<String, Object>> list = null;
        HashMap<String,Object> map= new HashMap<>();  
		map.put("start", start);
		map.put("email", m_email);
		
		if(Rowcnt > 0) {
			list = managementDao.list(map); } 
        
        
		mav.addObject("count", Rowcnt); //
		mav.addObject("pageNum", currentpage); 
		mav.addObject("totalPage", totalPage);
		mav.addObject("Pagestart", Pagestart); //
		mav.addObject("Pageend", Pageend);
		mav.addObject("list", list);
        
		return mav;
	}
}
