package com.nndi.client.board;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.QnaDTO;

public interface QNABoardDAO {

	public int insertqna(QnaDTO qnadto);

	public int QNAUpdateDAO(QnaDTO qnadto);


}
