package com.team3.member.dao;

import java.util.List;

import com.team3.member.dto.MemDTO;

public interface MemDAO {
	public List<MemDTO> MemberList()throws Exception;
	public void MemberJoin(MemDTO mdto) throws Exception;
	public boolean MemberLogin(MemDTO mdto) throws Exception;
	public boolean MemberCheck(MemDTO mdto) throws Exception;
	public MemDTO MemberInfo(MemDTO mdto) throws Exception;
	public void MemberModify(MemDTO mdto) throws Exception;
	public void MemberModify_NoPW(MemDTO mdto) throws Exception;
	public void MemberDelete(MemDTO mdto) throws Exception;
	public String idCheck(MemDTO mdto) throws Exception;
}