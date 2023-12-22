package kr.co.tindog.controller;

import java.io.File;
import java.net.URI;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import kr.co.tindog.dao.ProductDAO;


@Controller

public class ProductCont {
       
	
	public ProductCont() {
		System.out.println("ProductCont생성됨");
	}//class end
	
	@Autowired
	private ProductDAO productDao;	
	
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/list");
	    mav.addObject("list", productDao.list());
		return mav;
	}//list() end
	
	
	@GetMapping("/write")
	public String write() {
		return "layout/write";
	}//write() end
	
	
	
	@PostMapping("/insert")
	public String insert(@RequestParam Map<String, Object> map,
			             @RequestParam MultipartFile img1,
			                           MultipartFile img2,
			             HttpServletRequest req) {
		
		//System.out.println(map);
		//System.out.println(map.get("SUBJECT"));
		//System.out.println(map.get("PRICE"));
		//System.out.println(map.get("INFO"));
		
		//주의사항 : 파일업로드할 때 리네임 되지 않음
	    //업로드된 파일은 /storage 폴더에 저장

		String MAINPHOTO = "-";
		String PHOTO = "-";
		
		if(img1 != null && !img1.isEmpty()) { 
			MAINPHOTO=img1.getOriginalFilename(); 
			
			try {
				ServletContext application = req.getSession().getServletContext();
				String path = application.getRealPath("/storage");
				img1.transferTo(new File(path + "\\" + MAINPHOTO));
			}catch(Exception e) {
				System.out.println(e);
			}//try end
		}//if end
		
		if(img2 != null && !img2.isEmpty()) {
			PHOTO=img2.getOriginalFilename();
			
			try {
				ServletContext application = req.getSession().getServletContext();
				String path = application.getRealPath("/storage");
				img2.transferTo(new File(path + "\\" +PHOTO));
			}catch(Exception e) {
				System.out.println(e);
			}//try end
		}//if end
		
		map.put("MAINPHOTO", MAINPHOTO);
		map.put("PHOTO", PHOTO);
		
		productDao.insert(map); 

		
		
		return "redirect:/list"; 
	}//insert() end
	
	
	@GetMapping("/search")
	public ModelAndView search(@RequestParam(defaultValue = "") String SUBJECT){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/list");
		mav.addObject("list", productDao.search(SUBJECT));
		mav.addObject("SUBJECT", SUBJECT);
		return mav;
	}
	
	@GetMapping("/detail/{UPRODUCT_NO}")
	public ModelAndView detail(@PathVariable int UPRODUCT_NO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/detail");
		mav.addObject("product", productDao.detail(UPRODUCT_NO));
		return mav;
	}
	
	
	
}
