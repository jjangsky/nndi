package com.nndi.client.board;

import java.util.List;



import com.nndi.model.commondto.BoardDTO;
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



}
