package com.TeamSecond.letsmeet.IDAO;

import com.TeamSecond.letsmeet.DTO.MemberDTO;

public interface MemberDAO {
	public String memberId(String id);
	public void memberProc(MemberDTO memberDTO);
	public int loginProc(MemberDTO memberDTO); 
}
