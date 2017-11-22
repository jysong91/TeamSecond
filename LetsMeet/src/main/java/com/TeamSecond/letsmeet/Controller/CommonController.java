package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.IService.PlaceService;

@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	@Autowired
	PlaceService placeService;
	
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
		//장소 상세보기 클릭 시 해당아이디or아이피번호에 추가된다
		placeService.placeInsert(placeDTO);
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		model.addAttribute("placeName",  placeDTO.getPlaceName());
		model.addAttribute("placeAddr",  placeDTO.getPlaceAddr());
		model.addAttribute("tel",  placeDTO.getTel());
		model.addAttribute("outLine",  placeDTO.getOutLine());
		return "place";
	}
	
	@RequestMapping("review")
	public String review(PlaceDTO placeDTO, Model model) {
		model.addAttribute("placeName", placeDTO.getPlaceName());
		return "review";
	}
	
	@RequestMapping("test")
	public String test() {
		return "test";
	}
}
