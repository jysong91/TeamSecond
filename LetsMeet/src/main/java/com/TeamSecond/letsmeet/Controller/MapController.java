package com.TeamSecond.letsmeet.Controller;

import java.util.List;
import java.util.Map;

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

import com.TeamSecond.letsmeet.DTO.MapDTO;
import com.TeamSecond.letsmeet.IService.pathService;


@Controller
@RequestMapping("map")
@SessionAttributes("session")
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@Autowired
	public pathService pathSrv;
	
	@RequestMapping(value = "")
	public String map(Model model) {
		model.addAttribute("calRst","37.566826, 126.9786567"); //占쏙옙占쏙옙占시�(占쏙옙占쏙옙트)
		model.addAttribute("rad","5000"); 
		model.addAttribute("isFindCenter", "0");
		model.addAttribute("autoOverlay", false);
		return "map";
	}
	@RequestMapping(value = "/calMid")
	public String calMid(@RequestParam("ppl") List<String> ppl,
			Model model) {
		model.addAttribute("rad","1000");
		model.addAttribute("isFindCenter", "1");
		model.addAttribute("autoOverlay", true);
		return "map";
	}
	
	@RequestMapping(value = "/calMid2")
	public @ResponseBody MapDTO calMid2(@RequestParam("ppl") List<String> ppl) {
		MapDTO map = new MapDTO();
		map.setCalRst(pathSrv.calMid(ppl));
		map.setRad("1000");
		map.setIsFindCenter("1");
		map.setAutoOverlay(true);
		
		return map;
	}
}
