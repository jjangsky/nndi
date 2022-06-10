package com.nndi.admin.summing;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.FAQDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.QnaDTO;

public interface SummingMapper {

	/* 민원 전체 게시글 조회 */
	int selectTotalComplain();

	/* 민원 답변 게시글 조회 */
	int selectComplainRECnt();

	/* 민원 미답변 게시글 조회 */
	int selectComplainNotRECnt();

	/* 문의 전체 게시글 조회 */
	int selectQnaTotalcnt();

	/* 문의 답변 게시글 조회 */
	int selectQnaRECnt();

	/* 문의 미답변 게시글 조회 */
	int selectQnaNotRECnt();

	/* 자주묻는 질문 조회수 순위 */
	List<FAQDTO> selectFaqHitTops();

	/* 공지사항 조회수 순위 */
	List<NoticeDTO> selectNoticeHitTops();

	/* 현재 활동 회원 수 조회 */
	int aliveMembercnt();

	/* 휴면 회원 수 조회 */
	int restMemberCnt();

	/* 휴면, 활동 회원 전체 조회 */
	int allMemberCnt();

	/* 탈퇴 회원 통계 */
	int deadMemberSumming();

	/* 탈퇴 회원 통계 */
	int newMemberSum(Map<String, java.sql.Date> date);

}
