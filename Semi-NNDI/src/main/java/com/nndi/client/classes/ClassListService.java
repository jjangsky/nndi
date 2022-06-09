package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ClassDTO;

public class ClassListService {
	
	private static ClassListDAO classmapper;

	public List<ClassDTO> ClassList() {
		
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassDTO> classdto = classmapper.ClassList();
		
		System.out.println("dto 서비스 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public ClassDTO classdetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassDTO classdto = classmapper.ClassListDetail(num);
		return classdto;
	}

}
