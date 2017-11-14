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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.TeamSecond.letsmeet.DTO.MemberDTO;
import com.TeamSecond.letsmeet.IService.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MemberService memberService;
	
	//���̵� �ߺ�üũ
	@RequestMapping("idChkProc")
	public @ResponseBody int idChkProc(@RequestParam("id")String id) {
		return memberService.chkIdProc(id);
	}
	
	//������ȣ ����
	@RequestMapping("authSendProc")
	public @ResponseBody String authSendProc(@RequestParam("email")String email,HttpSession session) {
		//���ǰ��� �����Ѵ�
		session.setAttribute("authNumSession", memberService.authSendProc());
		//���ϰ��� memberService.authSendProc()���� ���� ������ �̹� ���ǰ������� �� �޼ҵ带 �ѹ� ���� �߱� ������
		//���ϰ����� memberService.authSendProc()�����ϸ� �޼ҵ带 2�� �����Ų�ų� �ٸ����� ������ ���� Ʋ������
		String authNumSession = (String) session.getAttribute("authNumSession");
		return authNumSession;
	}
	
	//������ȣ ��
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
}
