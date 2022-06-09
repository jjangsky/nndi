package com.nndi.admin.summing;

import java.util.List;

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

}
