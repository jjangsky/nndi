package com.nndi.client.classes;

import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;

public interface ClasspaymentMapper {

    public int classmemberinsert(ClassMemberDTO classmemberdto);

	public int classpaymentinsert(ClassPaymentDTO paymentdto);


}
