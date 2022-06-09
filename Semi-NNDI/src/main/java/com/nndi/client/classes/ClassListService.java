package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public class ClassListService {
	
	private static ClassListDAO classmapper;

	public List<ClassesAndTeacherAndCenterDTO> ClassList() {
		
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassList();
		
		System.out.println("dto 서비스 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public ClassesAndTeacherAndCenterDTO classdetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.ClassListDetail(num);
		return classdto;
	}

	public List<ClassesAndTeacherAndCenterDTO> ClassPhysicalList() {
		
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassPhysicalList();
		
		System.out.println("서비스 에서 dto 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public List<ClassesAndTeacherAndCenterDTO> ClassCultureLand() {
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassCultureLand();
		
		System.out.println("서비스 에서 dto 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public ClassesAndTeacherAndCenterDTO classphdetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.ClassPHDetail(num);
		return classdto;
	}

	public ClassesAndTeacherAndCenterDTO classculturedetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.classculturedetail(num);
		return classdto;
	}

}
