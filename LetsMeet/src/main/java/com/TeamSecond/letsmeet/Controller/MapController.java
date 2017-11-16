package com.TeamSecond.letsmeet.Controller;

import java.util.List;

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
	
	@RequestMapping(value = "")
	public String map(Model model) {
		model.addAttribute("calRst","37.566826, 126.9786567"); //서울시청(디폴트)
		model.addAttribute("rad","5000"); 
		model.addAttribute("isFindCenter", "0");
		model.addAttribute("autoOverlay", false);
		return "map";
	}
	@RequestMapping(value = "/calMid")
	public String calMid(@RequestParam("ppl") List<String> ppls,
			Model model) {
		model.addAttribute("calRst",pathSrv.calMid(ppls));
		model.addAttribute("rad","1000");
		model.addAttribute("isFindCenter", "1");
		model.addAttribute("autoOverlay", true);
		return "map";
	}
}
