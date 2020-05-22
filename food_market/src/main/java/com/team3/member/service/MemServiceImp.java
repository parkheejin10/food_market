package com.team3.member.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.team3.member.dao.MemDAO;
import com.team3.member.dto.MemDTO;

@Service
public class MemServiceImp implements MemService{
	@Inject
	private MemDAO mdao;

	@Override
	public List<MemDTO> MemberList() throws Exception {
		return mdao.MemberList();
	}

	@Override
	public void MemberJoin(MemDTO mdto) throws Exception {
		mdao.MemberJoin(mdto);
	}

	@Override
	public boolean MemberLogin(MemDTO mdto, HttpSession session) throws Exception {
		boolean result = mdao.MemberLogin(mdto);
		
		if (result) {
			MemDTO mvoInfo = MemberInfo(mdto);
			
			session.setAttribute("mb_id", mvoInfo.getMb_id());
			session.setAttribute("mb_name", mvoInfo.getMb_name());
		}
		return result;
	}

	@Override
	public MemDTO MemberInfo(MemDTO mdto) throws Exception {
		return mdao.MemberInfo(mdto);
	}

	@Override
	public void MemberLogout(HttpSession session) {
		session.invalidate();
		
	}

	@Override
	public boolean MemberCheck(MemDTO mdto) throws Exception {
		return mdao.MemberCheck(mdto);
	}

	@Override
	public void MemberModfiy(MemDTO mdto) throws Exception {
		mdao.MemberModify(mdto);
	}

	@Override
	public void MemberModify_NoPW(MemDTO mdto) throws Exception {
		mdao.MemberModify_NoPW(mdto);
	}

	@Override
	public void MemberDelete(MemDTO mdto) throws Exception {
		mdao.MemberDelete(mdto);
	}

	@Override
	public String idCheck(MemDTO mdto) throws Exception {
		String resultID = mdao.idCheck(mdto);
		return resultID;
	}

}
