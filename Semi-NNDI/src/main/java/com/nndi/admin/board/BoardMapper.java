package com.nndi.admin.board;

import java.util.List;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

public interface BoardMapper {

	/* 공지사항 전체 조회 */
	List<NoticeAndCategoryDTO> selectAllNoticeList();

	/* 공지사항 상세 보기 */
	NoticeAndCategoryDTO selectOneByNumNotice(int num);

	/* 민원 전체 조회 */
	List<ComplainAndCategoryDTO> selectAllComplainList();

	/* 민원 상세조회 */
	ComplainAndCategoryDTO selectOneByNumComplain(int num);

	/* 칭찬하기 전체 조회 */
	List<AdmireAndCategoryDTO> selectAllAdmireList();

	/* 칭찬하기 상세 조회 */
	AdmireAndCategoryDTO selectOneByNumAdmire(int num);

	/* 민원 답변 */
	int UpdateComplainRE(ComplainDTO complain);

	/* 칭찬하기 삭제 */
	int deleteAdmire(int num);

	/* 민원 삭제 */
	int deleteComplain(int num);

	/* 공지사항 삭제 */
	int deleteNotice(int num);

}
