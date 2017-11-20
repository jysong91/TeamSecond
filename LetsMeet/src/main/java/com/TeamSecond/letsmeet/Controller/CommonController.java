package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;

@Controller
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
	
	@RequestMapping("place")
	public String place(PlaceDTO placeDTO, Model model) {
		model.addAttribute("placeName", placeDTO.getPlaceName());
		model.addAttribute("placeAddr", placeDTO.getPlaceAddr());
		model.addAttribute("outLine", placeDTO.getOutLine());
		model.addAttribute("tel", placeDTO.getTel());
		return "place";
	}
	
	@RequestMapping("review")
	public String review() {
		return "review";
	}
}
