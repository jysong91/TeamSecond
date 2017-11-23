package com.TeamSecond.letsmeet.IService;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.TeamSecond.letsmeet.DTO.MemberDTO;

public interface MemberService {
	//아이디 중복확인
	public int chkIdProc(String id);
	//인증번호 생성
	public String authSendProc();
	//인증번호 비교
	public int authChkProc(String authNum, String authNumSession);
	//회원가입 실행
	public void memberProc(MemberDTO memberDTO);
	//로그인 실행
	public int loginProc(MemberDTO memberDTO,Map<String, String>map);
}
