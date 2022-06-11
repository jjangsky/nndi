package com.nndi.admin.teacher;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.board.BoardMapper;
import com.nndi.model.commondto.TeacherDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

public class TeacherService {
	
	private static  TeacherMapper mapper;
	

	/* 강사 전체 조회 */
	public List<TeacherDTO> selectAllTeacherList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(TeacherMapper.class);
		
		List<TeacherDTO> teacherList = mapper.selectAllTeacherList();
		
		System.out.println("Service : " + teacherList);
		
		return teacherList;
	}
	
	/* 강사 상세 조회 */
	public TeacherDTO selectOneTeacherByNo(int no) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(TeacherMapper.class);
		
		TeacherDTO detailTeacher = mapper.selectOneTeacherByNo(no);
		
		System.out.println("Service : " + detailTeacher);
		
		return detailTeacher;
	}
	
	
	/* 강사 등록 */
	public static int insertTeacher(TeacherDTO teacher) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(TeacherMapper.class);
		
		int result = mapper.insertTeacher(teacher);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
		
	}
	
	/* 강사 삭제 */
	public int deleteTeacher(int num) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}

