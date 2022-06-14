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
	
	/* 대관 환불 승인 Service */
	public int updateRentRefund(int num) {
		
		System.out.println("대관 환불 승인 서비스 도착 확인");

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		int result = mapper.UpdateRefund(num);
		
		System.out.println("대관 환불 승인 서비스 리졸트 :" +result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	
	/* 대관 환불 승인 취소 Service */
	public int updateRentRefundCancel(int num) {
		
		System.out.println("대관 환불 승인 취소 서비스 도착 확인");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		int result = mapper.updateClassRefundCancel(num);
		
		System.out.println("대관 환불 승인 취소 서비스 리졸트 : " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}


	
	/* 수강 환불 내역 전체 조회용 Service */
	public List<RentClassViewDTO> selectAllClassrefundList() {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		List<RentClassViewDTO> classRefundList = mapper.selectAllClassRefundList();
		
		for(RentClassViewDTO list : classRefundList) {
			System.out.println("Service : " + list);
		}
		
		return classRefundList;
	}


	/* 수강 환불 승인 Service */
	public int updateClassRefund(int num) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		System.out.println("활불 승인 수락 서비스 도착 확인 ");
		
		int result = mapper.UpdateClassRefund(num);
		
		System.out.println("Service 결과값: " + result);
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}


	/* 수강 환불 승인 취소 Service */
	public int updateClassCanselRefundCancel(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RefundMapper.class);
		
		System.out.println("활불 승인 서비스 도착 확인 ");
		
		int result = mapper.UpdateClassRefundCansel(num);
		
		System.out.println("Service 결과값: " + result);
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

}
