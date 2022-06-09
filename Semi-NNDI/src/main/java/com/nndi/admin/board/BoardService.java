package com.nndi.admin.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

import static com.nndi.common.config.Template.getSqlSession;

public class BoardService {
	
	private BoardMapper mapper;
	
	/* 공지사항 전체 조회 */
	public List<NoticeAndCategoryDTO> selectAllNoticeList() {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<NoticeAndCategoryDTO> noticeList = mapper.selectAllNoticeList();
		
		System.out.println("Service : " + noticeList);
		
		return noticeList;
	}

	/* 공지사항 상세 보기 */
	public NoticeAndCategoryDTO selectOneByNumNotice(int num) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		NoticeAndCategoryDTO detailNotice = mapper.selectOneByNumNotice(num);
		
		System.out.println("Service : " + detailNotice);
		
		return detailNotice;
	}

	/* 민원 전체 조회 */
	public List<ComplainAndCategoryDTO> selectAllComplainList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<ComplainAndCategoryDTO> complainList = mapper.selectAllComplainList();
		
		for(ComplainAndCategoryDTO complain : complainList) {
			System.out.println("Service : " + complain);
		}
		
		return complainList;
	}

	/* 민원 상세 조회 */
	public ComplainAndCategoryDTO selectOneByNumComplain(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		ComplainAndCategoryDTO detailComplain = mapper.selectOneByNumComplain(num);
		
		System.out.println("Service : " + detailComplain);
		
		return detailComplain;
	}

	/* 칭찬하기 전체 조회 */
	public List<AdmireAndCategoryDTO> selectAllAdmireList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<AdmireAndCategoryDTO> admireList = mapper.selectAllAdmireList();
		
		for(AdmireAndCategoryDTO admire : admireList) {
			System.out.println("Service : " + admire);
		}
		
		return admireList;
	}

	/* 칭찬하기 상세 조회 */
	public AdmireAndCategoryDTO selectOneByNumAdmire(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		AdmireAndCategoryDTO detailAdmire = mapper.selectOneByNumAdmire(num);
		
		System.out.println("Service : " + detailAdmire);
		
		return detailAdmire;
	}

	/* 민원 답변 */
	public int UpdateComplainRE(ComplainDTO complain) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.UpdateComplainRE(complain);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 칭찬하기 글 삭제 */
	public int deleteAdmire(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteAdmire(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 민원 삭제 */
	public int deleteComplain(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteComplain(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 공지사항 삭제 */
	public int deleteNotice(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteNotice(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

}
