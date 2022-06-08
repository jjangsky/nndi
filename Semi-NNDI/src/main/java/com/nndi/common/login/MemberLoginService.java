package com.nndi.common.login;

import static com.nndi.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.MemberDeadDTO;

public class MemberLoginService {

	private LoginMapper mapper;
	
	/* Member Login Service */
	public MemberAliveDTO memberLoginService(MemberAliveDTO memberAlive) {

		SqlSession sqlSession = getSqlSession();
		MemberAliveDTO loginMember = null;
		
		mapper = sqlSession.getMapper(LoginMapper.class);

		String encPwd = mapper.LoginCheck(memberAlive);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();		
		
		if(passwordEncoder.matches(memberAlive.getPwd(), encPwd)) {
			loginMember = mapper.selectLoginMember(memberAlive);
		}
		
		sqlSession.close();
		
		return loginMember;

	}
	
	/* RestMember Login Service */
	public MemberAliveDTO restMemberLoginSevice(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		MemberAliveDTO restLoginMember = null;
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String encPwd = mapper.restLoginCheck(memberAlive);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(memberAlive.getPwd(), encPwd)) {
			restLoginMember = mapper.selectRestLoginMember(memberAlive);
			
		}
		
		sqlSession.close();
		
		return restLoginMember;
		
	}

	/* After Member Login LastLogin Column Update Service */
	public int memberLastLoginService(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int result = mapper.updateLastLogin(memberAlive);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
		
	}

	/* Member Id Find Service */
	public String findMemberIdByQ(MemberAliveDTO memberAlive) {

		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String result = mapper.findMemberIdByQ(memberAlive);
		
		sqlSession.close();
		
		return result;
	}

	/* Update RestMember Service */ 
	public int updateRestMember() {

		System.out.println("휴면 고객 SchedulerJob execute 시작");
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int result = mapper.updateRestMember();
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	
	/* Delete OutMember Service */
	public int deleteOutMember() {
		
		System.out.println("탈퇴 회원 SchedulerJob execute 시작");
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		MemberDeadDTO deadMemberList = new MemberDeadDTO();
		
		/* OutMemberList Select */
		System.out.println("탈퇴로부터 1년 이상 지난 고객 리스트 SELECT 시작");
		MemberAliveDTO outMemberList = mapper.selectOutMemberList();
		System.out.println("탈퇴로부터 1년 이상 지난 고객 리스트 : " + outMemberList);
		int result = 0;
		
		deadMemberList.setPhone(outMemberList.getPhone());
		deadMemberList.setEmail(outMemberList.getEmail());
		deadMemberList.setAddress(outMemberList.getAddress());
		deadMemberList.setId(outMemberList.getId());
		deadMemberList.setPwd(outMemberList.getPwd());
		deadMemberList.setBirth(outMemberList.getBirth());
		deadMemberList.setName(outMemberList.getName());
		deadMemberList.setGender(outMemberList.getGender());
		
		System.out.println("SELECT의 결과문으로 DeadMember에 담을 DTO 처리 결과값 :" + deadMemberList);
		if(outMemberList.equals(null)) {
			System.out.println("결과값 없음, Session 종료");
			sqlSession.close();
			result = 0;
		} else {
			
			/* insert DeadMember */
			System.out.println("결과값 확인, Insert 시작");
			int insertResult = mapper.insertDeadMember(deadMemberList);
			System.out.println("Insert 결과 값 :" + insertResult);
			
			/* Delete MemberAlive */
			System.out.println("Insert 후 Delete 시작");
			int deleteResult = mapper.deleteOutMember();
			System.out.println("Delete 결과 값: " + deleteResult);
			if(insertResult > 0 && deleteResult > 0) {
				sqlSession.commit();
				result = 1;
			} else {
				sqlSession.rollback();
				result = 0;
			}

		}
		
		sqlSession.close();
		
		return result;
	}

	/* Update RestMember By Login Service */
	public int restMemberUpdate(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		System.out.println("휴면 회원 상태 변경 Service");
		mapper = sqlSession.getMapper(LoginMapper.class);
		System.out.println(memberAlive.getId());
		int result = mapper.updateRestmemberLogin(memberAlive);
		System.out.println("Service에서 받은 result값 : " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	
	
	
}