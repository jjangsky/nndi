package com.nndi.admin.teacher;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.teacher.TeacherMapper;
import com.nndi.model.commondto.TeacherDTO;

public class TeacherService {
	
	private TeacherMapper mapper;
	

	/* 강사 전체 조회 */
	public List<TeacherDTO> selectAllTeacherList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(TeacherMapper.class);
		
		List<TeacherDTO> teacherList = mapper.selectAllTeacherList();
		
		System.out.println("Service : " + teacherList);
		
		
		return teacherList;
	}
	
}

