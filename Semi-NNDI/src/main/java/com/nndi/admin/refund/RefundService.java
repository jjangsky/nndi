package com.nndi.admin.refund;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.joindto.admin.refund.RentClassViewDTO;
import com.nndi.model.joindto.admin.refund.RentRefunViewDTO;

public class RefundService {
	
	private RefundMapper mapper;

	/* 대관 환불 내역 전체 조회용 Service */
	public List<RentRefunViewDTO> selectAllrefundList() {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		List<RentRefunViewDTO> RentRefundList = mapper.selectAllRefundList();
		
		for(RentRefunViewDTO list : RentRefundList) {
			System.out.println("Service : " + list);
		}
		
		return RentRefundList;
	}

	/* 강좌 환불 내역 전체 조회용 Service */
	public List<RentClassViewDTO> selectAllClassrefundList() {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		List<RentClassViewDTO> classRefundList = mapper.selectAllClassRefundList();
		
		for(RentClassViewDTO list : classRefundList) {
			System.out.println("Service : " + classRefundList);
		}
		
		return classRefundList;
	}

}
