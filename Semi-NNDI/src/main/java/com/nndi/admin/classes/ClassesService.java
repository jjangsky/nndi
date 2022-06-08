package com.nndi.admin.classes;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;
import static com.nndi.common.config.Template.getSqlSession;

public class ClassesService {
	
	private ClassMapper mapper;

	/* 강좌 전체 조회 */
	public List<ClassesAndTeacherAndCenterDTO> selectAllClassList() {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		List<ClassesAndTeacherAndCenterDTO> classList = mapper.selectAllClassList();
		
		System.out.println(classList);
		
		return classList;
	}

	/* 강좌 상세 조회 */
	public ClassesAndTeacherAndCenterDTO selectOneByNumClass(int num) {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		ClassesAndTeacherAndCenterDTO cls = mapper.selectOneByNumClass(num);
		
		System.out.println(cls);
		
		return cls;
	}
	
}
