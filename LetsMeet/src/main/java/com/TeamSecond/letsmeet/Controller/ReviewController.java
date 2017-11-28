package com.TeamSecond.letsmeet.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;
import com.TeamSecond.letsmeet.IService.ReviewService;


@Controller
@RequestMapping("review")
@SessionAttributes("session")
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("reviewProc")
	public String reviewProc(ReviewDTO reviewDTO,@RequestParam("placeName")String placeName,Model model,@ModelAttribute("session")Map<String, String>map) {
		reviewService.reviewProc(reviewDTO);
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", reviewService.selectReview(placeName));
		//세션 아이디 전달
		model.addAttribute("loginId", map.get("loginId"));
		//별점가져오기
		model.addAttribute("selectAppraisal", reviewService.selectAppraisal(placeName));
		model.addAttribute("placeName", reviewService.reviewPlace(placeName).getPlaceName());
		model.addAttribute("placeAddr", reviewService.reviewPlace(placeName).getPlaceAddr());
		model.addAttribute("tel", reviewService.reviewPlace(placeName).getTel());
		model.addAttribute("outLine", reviewService.reviewPlace(placeName).getOutLine());
		return "place";
	}
	//해당아이디의 최신리뷰순으로 나열
	@RequestMapping("selectMyReviewPlaceNameAll")
	public String selectMyReviewPlaceNameAll(Model model,@ModelAttribute("session")Map<String, String>map) {
		String id= map.get("loginId");
		model.addAttribute("myReviewPlaceNameAll", reviewService.selectMyReviewPlaceNameAll(id));
		model.addAttribute("loginId", map.get("loginId"));
		return "myPage/myPageReview";
	}
	//해당장소 이미지에 마우스를 올리면 해당장소에 적은 리뷰보이기
	@RequestMapping("reviewExampleProc")
	public @ResponseBody ReviewDTO reviewExampleProc(Model model,@RequestParam("placeName")String placeName,@ModelAttribute("session")Map<String, String>map) {
		String id= map.get("loginId");
		logger.info(placeName);
		return reviewService.reviewExampleProc(placeName, id);
	}
}
