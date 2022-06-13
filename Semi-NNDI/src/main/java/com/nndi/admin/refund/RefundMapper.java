package com.nndi.admin.refund;

import java.util.List;

import com.nndi.model.joindto.admin.refund.RentClassViewDTO;
import com.nndi.model.joindto.admin.refund.RentRefunViewDTO;

public interface RefundMapper {

	List<RentRefunViewDTO> selectAllRefundList();

	List<RentClassViewDTO> selectAllClassRefundList();

	int UpdateRefund(int num);

}
