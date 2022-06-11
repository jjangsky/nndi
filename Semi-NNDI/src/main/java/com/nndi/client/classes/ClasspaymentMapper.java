package com.nndi.client.classes;

import java.util.List;

import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;
import com.nndi.model.joindto.client.ClassAndClasspaymentDTO;

public interface ClasspaymentMapper {

    public int classmemberinsert(ClassMemberDTO classmemberdto);

	public int classpaymentinsert(ClassPaymentDTO paymentdto);

	public List<ClassAndClasspaymentDTO> MypageclassList();

}
