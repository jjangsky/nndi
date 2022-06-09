package com.nndi.admin.member;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;

public class AdminMemberService {
	
	private MemberMapper mapper;
	
	/* 활동 회원 전체 조회 리스트 */
	public List<MemberAliveDTO> selectAllmemberAliveList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<MemberAliveDTO> memberAliveList = mapper.selectAllMemberAliveList();
		
		System.out.println("Service : " + memberAliveList);
		
		return memberAliveList;
	}	
	
	/*  회원정보 상세 보기 */
	public MemberAliveDTO selectOneMemberAliveById(String id) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		MemberAliveDTO detailMemberAlive = mapper.selectOneMemberAliveById(id);
		
		System.out.println("Service : " + detailMemberAlive);
		
		return detailMemberAlive;
		
	}
	
	/* 회원별 도서대출리스트 조회 */
	public BookRentAndBookInfoDTO selectOneMemberBookRentListById(String id) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		BookRentAndBookInfoDTO memberBookRentList = mapper.selectOneMemberBookRentListById(id);
		
		System.out.println("Service : " + memberBookRentList);
		
		return memberBookRentList;
		
	}
	
	/* 휴면회원 리스트 조회 */
	public List<MemberAliveDTO> selectAllRestMemberList() {
	
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<MemberAliveDTO> memberRestList = mapper.selectAllRestMemberList();
		
		System.out.println("Service : " + memberRestList);
		
		return memberRestList;
	}
	
}
	





