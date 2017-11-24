package com.TeamSecond.letsmeet.Controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;
import com.TeamSecond.letsmeet.IService.ReviewService;


@Controller
@RequestMapping("review")
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("reviewProc")
	public String reviewProc(ReviewDTO reviewDTO,@RequestParam("placeName")String placeName,Model model) {
		reviewService.reviewProc(reviewDTO);
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", reviewService.selectReview(placeName));
		//별점가져오기
		model.addAttribute("selectAppraisal", reviewService.selectAppraisal(placeName));
		model.addAttribute("placeName", reviewService.reviewPlace(placeName).getPlaceName());
		model.addAttribute("placeAddr", reviewService.reviewPlace(placeName).getPlaceAddr());
		model.addAttribute("tel", reviewService.reviewPlace(placeName).getTel());
		model.addAttribute("outLine", reviewService.reviewPlace(placeName).getOutLine());
		return "place";
	}
	
}
