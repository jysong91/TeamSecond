package com.TeamSecond.letsmeet.IService;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.TeamSecond.letsmeet.DTO.MemberDTO;

public interface MemberService {
	//���̵� �ߺ�Ȯ��
	public int chkIdProc(String id);
	//������ȣ ����
	public String authSendProc();
	//������ȣ ��
	public int authChkProc(String authNum, String authNumSession);
	//ȸ������ ����
	public void memberProc(MemberDTO memberDTO);
}
