package com.nndi.admin.classes;

import java.util.List;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public interface ClassMapper {

	/* 강좌 전체 조회 */
	List<ClassesAndTeacherAndCenterDTO> selectAllClassList();

	/* 강좌 상세 조회 */
	ClassesAndTeacherAndCenterDTO selectOneByNumClass(int num);

}
