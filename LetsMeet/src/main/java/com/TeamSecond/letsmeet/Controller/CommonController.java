package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String place() {
		return "place";
	}
	
	@RequestMapping("review")
	public String review() {
		return "review";
	}
	
	@RequestMapping("test")
	public String test() {
		return "test";
	}
}
