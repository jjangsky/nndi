package com.nndi.client.member_info.rent;

import static com.nndi.common.config.Template.getSqlSession;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.client.board.UserBoardMapper;
import com.nndi.model.commondto.RentRequestDTO;
import com.nndi.model.commondto.RentRequestSQLDTO;
import com.nndi.model.joindto.client.member_info.rent.RentRequestSQLAndCenterManagementDTO;

public class MyPageRentService {
	
	private static MyRentMapper MyRentMapper;
	
	/* 마이페이지 대관 신청 리스트 조회 */
	public static List<RentRequestSQLAndCenterManagementDTO> selectMyRentRequest(String user) {
		
		System.out.println("서비스");
		
		SqlSession sqlSession = getSqlSession();
		
		MyRentMapper = sqlSession.getMapper(MyRentMapper.class);
		
		List<RentRequestSQLAndCenterManagementDTO> myPageRentList = MyRentMapper.selectMyRentRequest();
		
		sqlSession.close();
		
		return myPageRentList;
		
	}
	
	/* 마이페이지 대관 신청 환불 내역 조회 */
	public static List<RentRequestSQLAndCenterManagementDTO> selectRentRefund(String user) {
		
		SqlSession sqlSession = getSqlSession();
		
		MyRentMapper = sqlSession.getMapper(MyRentMapper.class);
		
		List<RentRequestSQLAndCenterManagementDTO> rentRefund = MyRentMapper.selectRentRefund();
		
		sqlSession.close();
		
		return rentRefund;
	}
	
	/* 마이페이지에서 대관 신청취소가 가능한 리스트 조회 */
	public static List<RentRequestSQLAndCenterManagementDTO> selectRentCancel(String user) {
		SqlSession sqlSession = getSqlSession();
		
		MyRentMapper = sqlSession.getMapper(MyRentMapper.class);
		
		List<RentRequestSQLAndCenterManagementDTO> rentCancelList = MyRentMapper.selectRentCancel();
		
		sqlSession.close();
		
		return rentCancelList;
	}
	
	/* 대관 철회 Update */
	public static int updateCancel(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		MyRentMapper = sqlSession.getMapper(MyRentMapper.class);
		int result = MyRentMapper.updateCancel(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

}
