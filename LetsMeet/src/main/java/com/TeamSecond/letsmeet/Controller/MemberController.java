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
	
	//아이디 중복체크
	@RequestMapping("idChkProc")
	public @ResponseBody int idChkProc(@RequestParam("id")String id) {
		return memberService.chkIdProc(id);
	}
	
	//인증번호 생성
	@RequestMapping("authSendProc")
	public @ResponseBody String authSendProc(@RequestParam("email")String email,HttpSession session) {
		//세션값을 저장한다
		session.setAttribute("authNumSession", memberService.authSendProc());
		//리턴값을 memberService.authSendProc()으로 안한 이유는 이미 세션값저장할  메소드를 한번 실행 했기 때문에
		//리턴값으로 memberService.authSendProc()으로하면 메소드를 2번 실행시킨거나 다름없기 때문에 값이 틀려진다
		String authNumSession = (String) session.getAttribute("authNumSession");
		return authNumSession;
	}
	
	//인증번호 비교
	@RequestMapping("authChkProc")
	public @ResponseBody int authChkProc(@RequestParam("authNum")String authNum, HttpSession session) {
		String authNumSession = (String) session.getAttribute("authNumSession");
		return memberService.authChkProc(authNum,authNumSession);
	}
	//회원가입 실행
	@RequestMapping("memberProc")
	public String memberProc(MemberDTO memberDTO) {
		memberService.memberProc(memberDTO);
		return "main";
	}
	//로그인 실행
	@RequestMapping("loginProc")
	public String loginProc(MemberDTO memberDTO,Model model,@ModelAttribute("session")Map<String, String>map) {
		if(memberService.loginProc(memberDTO,map)==1){	
			model.addAttribute("loginMsg","로그인 성공");
			model.addAttribute("loginId", map.get("loginId"));
			return "main";
		}
		model.addAttribute("loginMsg","로그인 실패");
		return "main";
	}
	
	//로그아웃
	@RequestMapping("logout")
	public String logout(Model model,SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "main";
	}
	
	@RequestMapping("{forPath}")
	public String forPath(Model model,@PathVariable("forPath")String forPath,@ModelAttribute("session")Map<String, String>map) {
		model.addAttribute("loginId", map.get("loginId"));
		return "myPage/"+forPath;
	}
}