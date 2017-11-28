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
	
	@RequestMapping("place")
	public String place(PlaceDTO placeDTO, Model model,@ModelAttribute("session")Map<String, String>map) {
		//장소 상세보기 클릭 시 해당아이디or아이피번호에 추가된다
		placeService.placeInsert(placeDTO);
		//세션 아이디 가져와서 보내기
		model.addAttribute("loginId", map.get("loginId"));
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		//별점 가져오기
		model.addAttribute("selectAppraisal", placeService.selectAppraisal(placeDTO.getPlaceName()));
		model.addAttribute("placeName",  placeDTO.getPlaceName());
		model.addAttribute("placeAddr",  placeDTO.getPlaceAddr());
		model.addAttribute("tel",  placeDTO.getTel());
		model.addAttribute("outLine",  placeDTO.getOutLine());
		return "place";
	}
}
