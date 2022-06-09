package com.nndi.admin.summing;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.FAQDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.QnaDTO;

import static com.nndi.common.config.Template.getSqlSession;

public class SummingService {
	
	private SummingMapper mapper;

	/* 게시글 통계 */
	public Map<String, Object> postSummingRequestList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);
		
		Map<String, Object> postSummingRequestList = new HashMap<String, Object>();
		
		int complainTotalcnt = mapper.selectTotalComplain();
		int complainRECnt = mapper.selectComplainRECnt();
		int complainNotRECnt = mapper.selectComplainNotRECnt();
		
		int qnaTotalcnt = mapper.selectQnaTotalcnt();
		int qnaRECnt = mapper.selectQnaRECnt();
		int qnaNotRECnt = mapper.selectQnaNotRECnt();
		
		List<NoticeDTO> noticeHitTops = mapper.selectNoticeHitTops();
		List<FAQDTO> faqHitTops = mapper.selectFaqHitTops();
		
		postSummingRequestList.put("complainTotalcnt", complainTotalcnt);
		postSummingRequestList.put("complainRECnt", complainRECnt);
		postSummingRequestList.put("complainNotRECnt", complainNotRECnt);
		postSummingRequestList.put("qnaTotalcnt", qnaTotalcnt);
		postSummingRequestList.put("qnaRECnt", qnaRECnt);
		postSummingRequestList.put("qnaNotRECnt", qnaNotRECnt);
		postSummingRequestList.put("noticeHitTops", noticeHitTops);
		postSummingRequestList.put("faqHitTops", faqHitTops);
		
		System.out.println("Service " + postSummingRequestList);
		
		return postSummingRequestList;
	}

}
