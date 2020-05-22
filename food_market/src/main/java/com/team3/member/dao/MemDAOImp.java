package com.team3.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.member.dto.MemDTO;

@Repository
public class MemDAOImp implements MemDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace="com.team3.mapper.memberMapper";
	
	@Override
	public List<MemDTO> MemberList() throws Exception {
		return sqlSession.selectList(Namespace+".selectMember");
	}
	
	@Override
	public void MemberJoin(MemDTO mdto) throws Exception {
		sqlSession.insert(Namespace+".insertMember",mdto);
	}

	@Override
	public boolean MemberLogin(MemDTO mdto) throws Exception {
		boolean result=false;
		String name = sqlSession.selectOne(Namespace+".loginMember", mdto);
		if (name == null) {
			
		}else {
			result=true;
		}
		return result;
	}

	@Override
	public boolean MemberCheck(MemDTO mdto) throws Exception {
		return MemberLogin(mdto);
	}

	@Override
	public MemDTO MemberInfo(MemDTO mdto) throws Exception {
		return sqlSession.selectOne(Namespace+".memberInfo",mdto);
	}

	@Override
	public void MemberModify(MemDTO mdto) throws Exception {
		sqlSession.update(Namespace+".memberModify",mdto);
	}

	@Override
	public void MemberModify_NoPW(MemDTO mdto) throws Exception {
		sqlSession.update(Namespace+".memberModify_NoPW",mdto);
	}

	@Override
	public void MemberDelete(MemDTO mdto) throws Exception {
		sqlSession.delete(Namespace+".memberDelete", mdto);
	}

	@Override
	public String idCheck(MemDTO mdto) throws Exception {
		String resultID = sqlSession.selectOne(Namespace+".idCheck",mdto);
		return resultID;
	}
	
	
}

