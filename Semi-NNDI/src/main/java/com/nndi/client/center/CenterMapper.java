package com.nndi.client.center;

import java.util.List;

import com.nndi.model.commondto.CenterManagementDTO;
import com.nndi.model.commondto.RentRequestDTO;

public interface CenterMapper {
	
	/* 대관 리스트 전체 조회 */
	List<CenterManagementDTO> selectCenterList();
	
	/* 대관 요청 조회 */
	List<RentRequestDTO> selectRentRequest(String num);

	/* 대관 상세조회 */
	CenterManagementDTO selectCenterDetail(String num);



	

	

}
