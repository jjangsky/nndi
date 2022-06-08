package com.nndi.client.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.QnaDTO;

public interface QNABoardListMapper {

	List<QnaDTO> QNABoardList();

	QnaDTO QNABoardListDetail(int num);	

}
