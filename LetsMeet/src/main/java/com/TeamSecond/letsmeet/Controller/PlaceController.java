package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.IService.PlaceService;


@Controller
@RequestMapping("place")
public class PlaceController {
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);
	
	@Autowired
	PlaceService placeService;

	@RequestMapping("placeInsert")
	public String placeInsert(PlaceDTO placeDTO,Model model) {
		placeService.placeInsert(placeDTO);
		model.addAttribute("placeName", placeDTO.getPlaceName());
		
		return "review";
	}
	
}
