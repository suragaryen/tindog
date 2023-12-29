package kr.co.tindog.worldcup;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.persistence.metamodel.SetAttribute;
import jakarta.servlet.http.HttpSession;

@Controller
public class WorldcupController {

	public WorldcupController() {
		System.out.println("WorldcupController 생성");
	}
	
	@Autowired
	public WorldcupDAO worldcupDAO;
	
	//http://localhost:2000/worldcup
	
	@GetMapping("worldcup")
	public ModelAndView worldcup() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("layout/worldcup/worldcup_main");
		return mav;
	}
	
	
	//http://localhost:2000/worldcup/select
		
		@RequestMapping("worldcup/select")
		public ModelAndView worldcup_select() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("layout/worldcup/worldcup_selection");
			return mav;
		}
	
	//http://localhost:2000/worldcup/start

		@RequestMapping("worldcup/start")
		public ModelAndView worldcup_start(HttpSession session) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("layout/worldcup/worldcup_start");
			String email = (String) session.getAttribute("s_email");
			List<Map<String, Object>> imageList = worldcupDAO.worldcupImgList(email);
			
			System.out.println(imageList);
			//System.out.println(worldcupDAO.worldcupImgList(email));
			mav.addObject("imageList",imageList);
			return mav;
		}
		
		@RequestMapping("worldcup/optionstart")
		public ModelAndView worldcupoptionstart(HttpSession session, @ModelAttribute DogDTO dogDTO) throws Exception{
			ModelAndView mav = new ModelAndView();
			mav.setViewName("layout/worldcup/worldcup_optionstart");					
			
			String email = (String) session.getAttribute("s_email");
			dogDTO.setEmail(email);
			
			System.out.println(dogDTO);
				
			List<Map<String, Object>> OptionList = worldcupDAO.worldcupOptionList(dogDTO);
			System.out.println("map:" + OptionList.toString());
			System.out.println(OptionList);
			
			mav.addObject("OptionList", OptionList);
		
			
			return mav;
		}
}
