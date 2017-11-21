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
		//��� �󼼺��� Ŭ�� �� �ش���̵�or�����ǹ�ȣ�� �߰��ȴ�
		placeService.placeInsert(placeDTO);
		//���� �Ѱ� ��������
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		model.addAttribute("placeDTO", placeDTO);
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
