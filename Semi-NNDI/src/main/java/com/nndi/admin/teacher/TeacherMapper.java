package com.nndi.admin.teacher;

import java.util.List;

import com.nndi.model.commondto.TeacherDTO;

public interface TeacherMapper {
	
	/* 강사 전체 보기 */
	List<TeacherDTO> selectAllTeacherList();
	
	/* 강사 정보 수정(update) */
}


