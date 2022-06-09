package com.nndi.admin.board;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.FAQDTO;
import com.nndi.model.commondto.QnaDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.FAQAndCategoryDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;
import com.nndi.model.joindto.admin.board.QnaAndCategoryDTO;

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
	
	/* FAQ 전체 조회 */
	public List<FAQAndCategoryDTO> selectAllFAQList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<FAQAndCategoryDTO> faqList = mapper.selectAllFAQList();
		
		System.out.println("faqList : " + faqList);
		
		return faqList;
		
	}
	
	/* FAQ 상세 보기 */
	public FAQAndCategoryDTO selectFAQOneByNum(int num) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		FAQAndCategoryDTO detailFaq = mapper.selectFAQOneByNum(num);
		
		System.out.println("Service : " + detailFaq);
		
		return detailFaq;
	}
	
	/* QNA 전체 조회 */
	public List<QnaAndCategoryDTO> selectAllQnaList() {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<QnaAndCategoryDTO> qnaList = mapper.selectAllQnaList();
		
		System.out.println("Service : " + qnaList);
		
		return qnaList;
	}
	
	/* QNA 상세 보기 */
	public QnaAndCategoryDTO selectQnaOneByNum(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		QnaAndCategoryDTO detailqna = mapper.selectQnaOneByNum(num);
		
		System.out.println("Service : " + detailqna);
		
		return detailqna;
	}
	

	/* QNA 답변하기 */
	public int UpdateQnaRE(QnaDTO qna) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.UpdateQnaRE(qna);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* FAQ 수정 */
	public int UpdateFaqRE(FAQDTO faq) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.UpdateFaqRE(faq);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

}
