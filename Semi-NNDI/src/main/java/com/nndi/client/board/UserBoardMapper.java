package com.nndi.client.board;

import java.util.List;

import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;


public interface UserBoardMapper {
	
	/* 민원 조회 */
	List<BoardDTO> selectBoardList();
	
	/* 민원 신청 */
	int insertComplain(BoardDTO board);

	/* 민원 상세 조회 */
	BoardAndCategoryDTO complainDetail(int num);

	/* 민원 수정 */
	int updateComplain(BoardDTO board);
	
	/* 공지사항 전체 조회 */
	List<NoticeDTO> selectNotice();
	
	/* 공지사항 상세 조회 */
	NoticeDTO selectNoticeDetail(int num);

	/* 민원 삭제(컬럼값 변경) */
	int deleteComplain(int num);
	
	/* 민원게시판 답변 상세 조회 */
	BoardAndCategoryDTO selectComplainAnswer(int num);
	
	/* 공지사항 조회수 증가 업데이트 */
	int incrementNoticeCount(int num);
	
	/* 민원 게시판 조회수 증가 업데이트 */
	int incrementComplainCount(int num);



}
