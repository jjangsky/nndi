package com.nndi.common.paging;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public class PagingService {

	private PagingMapper mapper;
	
	/* 강좌 전체 게시글 수 조회 */
	public int selectTotalCount(Map<String, String> searchMap) {
		
		System.out.println("전체 게시글 수 조회하는 Service 도착 확인");
		SqlSession sqlSession = getSqlSession();
		
		mapper =  sqlSession.getMapper(PagingMapper.class);
		
		int totalCount = mapper.selectTotalCount(searchMap);
		
		System.out.println("Service에서 조회한 Class의 전체 게시글 수 조회: " + totalCount);
		
		sqlSession.close();
		
		return totalCount;
	}

	/* 강좌 전체 조회 */
	public List<ClassesAndTeacherAndCenterDTO> selectBoradList(PagingDTO pagingDTO) {
		System.out.println("강좌 전체 조회용 Service 도착 확인");
		SqlSession sqlSession = getSqlSession();
		
		System.out.println("Servlet에서 전달받은 pagingDTO 값 확인: " + pagingDTO);
		
		mapper =  sqlSession.getMapper(PagingMapper.class);
		
		List<ClassesAndTeacherAndCenterDTO> classboardList = mapper.selectClassList(pagingDTO);
		
		
		System.out.println("Service에서 조회한 Class의 전체 게시글 : " + classboardList);
		
		sqlSession.close();
		
		return classboardList;
		
	}

}
