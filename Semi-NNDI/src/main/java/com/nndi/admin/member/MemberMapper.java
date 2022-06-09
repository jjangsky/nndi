package com.nndi.admin.member;

import java.util.List;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;

public interface MemberMapper {
	
	/* 활동 회원 전체 조회 리스트 */
	List<MemberAliveDTO> selectAllMemberAliveList();
	
	/* 활동 회원 상세정보 */
	MemberAliveDTO selectOneMemberAliveById(String id);

	/* 회원별 도서대출리스트 조회 */
	BookRentAndBookInfoDTO selectOneMemberBookRentListById(String id);
	
	/* 휴면회원 리스트 조회 */
	List<MemberAliveDTO> selectAllRestMemberList();


}

