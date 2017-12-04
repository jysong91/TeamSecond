package com.TeamSecond.letsmeet.Controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.TeamSecond.letsmeet.DTO.MemberDTO;
import com.TeamSecond.letsmeet.IService.MemberService;

@Controller
@RequestMapping("member")
@SessionAttributes("session")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MemberService memberService;
	
	@ModelAttribute("session")
	public Map<String, String> getSessionInfo(){
		Map<String, String> map =
				new HashMap<String, String>();
		return map;
	}
	
	@RequestMapping("idChkProc")
	public @ResponseBody int idChkProc(@RequestParam("id")String id) {
		return memberService.chkIdProc(id);
	}
	
	@RequestMapping("authSendProc")
	public @ResponseBody String authSendProc(@RequestParam("email")String email,HttpSession session) {
		session.setAttribute("authNumSession", memberService.authSendProc());
		String authNumSession = (String) session.getAttribute("authNumSession");
		return authNumSession;
	}
	
	@RequestMapping("authChkProc")
	public @ResponseBody int authChkProc(@RequestParam("authNum")String authNum, HttpSession session) {
		String authNumSession = (String) session.getAttribute("authNumSession");
		return memberService.authChkProc(authNum,authNumSession);
	}
	@RequestMapping("memberProc")
	public String memberProc(MemberDTO memberDTO) {
		memberService.memberProc(memberDTO);
		return "main";
	}
	@RequestMapping("loginProc")
	public String loginProc(MemberDTO memberDTO,Model model,@ModelAttribute("session")Map<String, String>map,
			HttpSession session) {
		if(memberService.loginProc(memberDTO,map)==1){	
			model.addAttribute("loginMsg","로그인메세지");
			model.addAttribute("loginId", map.get("loginId"));
			session.setAttribute("loginId", map.get("loginId"));
			return "main";
		}
		model.addAttribute("loginMsg","로그인메세지");
		return "main";
	}
	
	@RequestMapping("logout")
	public String logout(Model model,SessionStatus sessionStatus, HttpSession session) {
		sessionStatus.setComplete();
		session.setAttribute("loginId", null);
		return "redirect:/";
	}
	
	@RequestMapping("{forPath}")
	public String forPath(Model model,@PathVariable("forPath")String forPath,@ModelAttribute("session")Map<String, String>map) {
		model.addAttribute("loginId", map.get("loginId"));
		return "myPage/"+forPath;
	}
}