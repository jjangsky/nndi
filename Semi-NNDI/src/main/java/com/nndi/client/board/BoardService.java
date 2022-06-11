package com.nndi.client.board;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.TCREmploymentDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;


public class BoardService {
	private static UserBoardMapper boardMapper;
	
	/* 민원 게시글 전체 조회 */
	public static List<BoardDTO> selectBoardList() {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		List<BoardDTO> boardList = boardMapper.selectBoardList();
		
		sqlSession.close();
		
		
		return boardList;
	}

	/* 민원 게시글 작성 */
	public int insertComplain(BoardDTO board) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		int result = boardMapper.insertComplain(board);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	/* 민원 게시글 상세 조회 */
	public BoardAndCategoryDTO complainDetail(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		int result = boardMapper.incrementComplainCount(num);
		
		BoardAndCategoryDTO complainDetail = null;
		
		if(result > 0) {
			complainDetail = boardMapper.complainDetail(num);	
			if(complainDetail != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} else {
			sqlSession.rollback();
		}
		
		return complainDetail;
	}

	/* 민원 게시글 수정 */
	public int updateComplain(BoardDTO board) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		int result = boardMapper.updateComplain(board);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
		
	}
	
	/* 공지 사항 전체 조회 */
	public static List<NoticeDTO> selectNotice() {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		List<NoticeDTO> noticeBoard = boardMapper.selectNotice();
		
		sqlSession.close();
		
		return noticeBoard;
	}

	/* 공지 사항 상세 조회 */
	public NoticeDTO noticeDetail(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		int result = boardMapper.incrementNoticeCount(num);
		
		NoticeDTO noticeDetail = null;
		
		if(result > 0) {
			noticeDetail = boardMapper.selectNoticeDetail(num);
			
			if(noticeDetail != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return noticeDetail;
	}

	/* 민원 게시판 삭제(컬럼 Update) */
	public int deleteComplain(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		int result = boardMapper.deleteComplain(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	/* 민원게시판 답변 상세 조회 */
	public BoardAndCategoryDTO selectComplainAnswer(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		BoardAndCategoryDTO complainAnswer = boardMapper.selectComplainAnswer(num);
		
		
		return complainAnswer;
	}
	
	/* 강사게시판 전체 조회 */
	public static List<TCREmploymentDTO> selectEmployee() {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		List<TCREmploymentDTO> emp = boardMapper.selectEmployee();
		
		sqlSession.close();
		
		return emp;
	}
	
	/* 강사게시판 상세 조회 */
	public static TCREmploymentDTO selectEmpDetail(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		boardMapper = sqlSession.getMapper(UserBoardMapper.class);
		
		TCREmploymentDTO empDetail = boardMapper.selectEmpDetail(num);
		
		sqlSession.close();
		
		return empDetail;
	}
	
	
	

	
	

}
