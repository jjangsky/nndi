package com.nndi.client.Account;

import static com.nndi.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;

public class MemberService {

	private AccountMapper mapper;
	
	/* 회원 가입 Service */
	public int registMember(MemberAliveDTO memberlist) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		int result = mapper.accountMember(memberlist);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	public int checkId(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* Manager Account Service*/
	public int registManager(ManagerDTO managerList) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		int result = mapper.accountManager(managerList);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

}
