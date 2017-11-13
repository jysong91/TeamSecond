package com.TeamSecond.letsmeet.IService;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.TeamSecond.letsmeet.DTO.MemberDTO;

public interface MemberService {
	public int chkIdProc(String id);
	public String authSendProc();
	public int authChkProc(String authNum, String authNumSession);
	public void memberProc(MemberDTO memberDTO);
}
