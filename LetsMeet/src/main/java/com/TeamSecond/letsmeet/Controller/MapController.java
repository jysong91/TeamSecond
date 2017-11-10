package com.TeamSecond.letsmeet.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.TeamSecond.letsmeet.IService.pathService;


@Controller
@RequestMapping("map")
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@Autowired
	public pathService pathSrv;
	
	@RequestMapping(value = "/map")
	public String home(Model model) {
		model.addAttribute("calRst","37.566826, 126.9786567"); //서울시청(디폴트)
		model.addAttribute("rad","5000"); 
		model.addAttribute("isFindCenter", "0");
		return "map";
	}
	@RequestMapping(value = "/calMid")
	public String calMid(@RequestParam("myLoc") String myLoc,
			@RequestParam("yourLoc") String yourLoc,
			Model model) {
		model.addAttribute("calRst",pathSrv.calMid(myLoc, yourLoc));
		model.addAttribute("rad","1000");
		model.addAttribute("isFindCenter", "1");
		logger.info(pathSrv.calMid(myLoc, yourLoc));
		return "map";
	}
}
