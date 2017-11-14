package com.TeamSecond.letsmeet.Service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.DTO.MemberDTO;
import com.TeamSecond.letsmeet.IDAO.MemberDAO;
import com.TeamSecond.letsmeet.IService.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	final String AUTHMSGTRUE = "인증번호 일치";
	final String AUTHMSGFALSE = "인증번호 불일치";
	
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public int chkIdProc(String id) {
		if("hygi".equals(id)){
			return 1;
		}
		return 0;
	}

	@Override
	public String authSendProc() {
		String authNumForm = String.format("%01d", (int)(Math.random()*10));
		return authNumForm;
	}

	@Override
	public int authChkProc(String authNum,String authNumSession) {
		if(authNumSession.equals(authNum)){
			return 0;
		}
		return 1;
	}

	@Override
	public void memberProc(MemberDTO memberDTO) {
		memberDAO.memberProc(memberDTO);
	}
}
