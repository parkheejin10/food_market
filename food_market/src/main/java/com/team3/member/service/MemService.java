package com.team3.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.team3.member.dto.MemDTO;

public interface MemService {
	public List<MemDTO> MemberList()throws Exception;
	public void MemberJoin(MemDTO mdto) throws Exception;
	public boolean MemberLogin(MemDTO mdto, HttpSession session) throws Exception;
	public MemDTO MemberInfo(MemDTO mdto) throws Exception;
	public void MemberLogout(HttpSession session);
	public boolean MemberCheck(MemDTO mdto) throws Exception;
	public void MemberModfiy(MemDTO mdto) throws Exception;
	public void MemberModify_NoPW(MemDTO mdto) throws Exception;
	public void MemberDelete(MemDTO mdto) throws Exception;
	public String idCheck(MemDTO mdto) throws Exception;
}
