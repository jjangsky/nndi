package com.nndi.client.board;

import static com.nndi.common.config.Template.getSqlSession;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.jdt.core.compiler.CategorizedProblem;

import com.nndi.admin.board.BoardMapper;
import com.nndi.client.board.UserBoardMapper;
import com.nndi.model.commondto.BoardDTO;
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
		
		BoardAndCategoryDTO complainDetail = boardMapper.complainDetail(num);
		
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
	

}
