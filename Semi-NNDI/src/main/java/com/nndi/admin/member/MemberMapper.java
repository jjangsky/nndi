package com.nndi.admin.member;

import java.util.List;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.MemberTotalDTO;

public interface MemberMapper {
	
	
	/* 활동 회원 전체 조회 리스트 */
	List<MemberTotalDTO> selectAllMemberAliveList();
	
	/* 활동 회원 상세정보 */
	MemberTotalDTO selectOneMemberAliveById(String id);

	/* 회원별 도서대출리스트 조회 */
//	List<MemberAliveAndBookRentAndBookInfoDTO> selectOneMemberBookRentListById();
	
	/* 휴먼회원 리스트 조회 */
	List<MemberAliveDTO> selectAllRestMemberList();
	
	/* 휴면 -> 일반회원 전환 */
	int updateRestMember(String id);


}

