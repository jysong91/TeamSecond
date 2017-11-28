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
@RequestMapping("mypage")
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping("wishlist")
	public String wishlist() {
		return "wishlist";
	}
	
	@RequestMapping("q_n_a")
	public String q_n_a() {
		return "q_n_a";
	}
	@RequestMapping("myReview")
	public String myReview() {
		return "myReview";
	}
}
