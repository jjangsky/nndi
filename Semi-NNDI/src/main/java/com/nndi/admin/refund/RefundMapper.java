package com.nndi.admin.refund;

import java.util.List;

import com.nndi.model.joindto.admin.refund.RentClassViewDTO;
import com.nndi.model.joindto.admin.refund.RentRefunViewDTO;

public interface RefundMapper {

	/* 대관 요청 내역 조회 */
	List<RentRefunViewDTO> selectAllRefundList();

	/* 대관 환불 승인 */
	int UpdateRefund(int num);
	
	/* 대관 환불 승인 취소  */
	int updateClassRefundCancel(int num);

	/* 수강 요청 내역 조회 */
	List<RentClassViewDTO> selectAllClassRefundList();

	/* 수강 환불 승인 */
	int UpdateClassRefund(int num);
	
	/* 수강 환불 취소 */
	int UpdateClassRefundCansel(int num);


}
