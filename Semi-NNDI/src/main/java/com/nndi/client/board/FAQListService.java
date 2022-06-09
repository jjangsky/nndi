package com.nndi.client.board;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.FAQDTO;

public class FAQListService {
	
	private static FAQListDAO FAQmapper;

	public List<FAQDTO> FAQlistservice() {
		SqlSession sqlSession = getSqlSession();
		FAQmapper = sqlSession.getMapper(FAQListDAO.class);
		
		List<FAQDTO> faqdto = FAQmapper.FAQlist();
		return faqdto;
	}

	public FAQDTO FaqDetail(int num) {
		SqlSession sqlSession = getSqlSession();
		FAQmapper = sqlSession.getMapper(FAQListDAO.class);
		
		FAQDTO faqdto = FAQmapper.FAQListDetail(num);
		return faqdto;
	}

}
