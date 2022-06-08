package com.nndi.client.board;

import java.util.List;

import org.apache.catalina.Session;
import org.apache.ibatis.session.SqlSession;
import static com.nndi.common.config.Template.getSqlSession;

import com.nndi.model.commondto.QnaDTO;

public class QNABoardListService {
	private QNABoardListMapper mapper;
	
	
	public List<QnaDTO> QNABoardList() {
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(QNABoardListMapper.class);
		System.out.println("서비스 확인용");
		
		List<QnaDTO> commenddto = mapper.QNABoardList();
		return commenddto;
	}


	public QnaDTO QnaDetail(int num) {
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(QNABoardListMapper.class);
		
		QnaDTO qnadto = mapper.QNABoardListDetail(num);
		return qnadto;
		
	}



}
