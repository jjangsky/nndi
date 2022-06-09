package com.nndi.client.board;

import java.util.List;

import com.nndi.model.commondto.FAQDTO;

public interface FAQListDAO {

	List<FAQDTO> FAQlist();

	FAQDTO FAQListDetail(int num);
	

}
