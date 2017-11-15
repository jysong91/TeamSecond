package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;


@Controller
@RequestMapping("review")
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@RequestMapping("reviewProc")
	public String reviewProc(@RequestParam("reviewMemberType")String reviewMemberType) {
		logger.info(reviewMemberType);
		return "review";
	}
	
}
