package com.TeamSecond.letsmeet.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.IService.PlaceService;

@Controller
@RequestMapping("place")
@SessionAttributes("session")
public class PlaceController {
	
	@Autowired
	PlaceService placeService;
	
	@RequestMapping("/")
	public String place(PlaceDTO placeDTO, Model model) {
		placeService.placeInsert(placeDTO);
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		model.addAttribute("selectAppraisal", placeService.selectAppraisal(placeDTO.getPlaceName()));
		model.addAttribute("placeName",  placeDTO.getPlaceName());
		model.addAttribute("placeAddr",  placeDTO.getPlaceAddr());
		model.addAttribute("tel",  placeDTO.getTel());
		model.addAttribute("outLine",  placeDTO.getOutLine());
		return "place";
	}
}
