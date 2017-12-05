package com.TeamSecond.letsmeet.Controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.IService.PlaceService;

@Controller
@SessionAttributes("session")
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class); 
	
	@RequestMapping(value = "/")
	public String home() {
		return "main";
	}
	
	@RequestMapping("member")
	public String member() {
		return "member";
	}	
	@RequestMapping("review")
	public String review(PlaceDTO placeDTO, Model model,@ModelAttribute("session")Map<String, String>map) {
		model.addAttribute("placeName", placeDTO.getPlaceName());
		model.addAttribute("loginId", map.get("loginId"));
		return "review";
	}
	
	@RequestMapping("mypage")
	public String mypage() {
		return "mypage";
	}
	@RequestMapping("about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("top")
	public String top() {
		return "common/top";
	}
	@RequestMapping("butNav")
	public String butNav() {
		return "common/butNav";
	}

	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("myPage")
	public String myPage(Model model,@ModelAttribute("session")Map<String, String>map) {
		model.addAttribute("loginId", map.get("loginId"));
		return "myPage/myPage";
	}
	
	@RequestMapping("test")
	public String test() {
		return "test";
	}
}
