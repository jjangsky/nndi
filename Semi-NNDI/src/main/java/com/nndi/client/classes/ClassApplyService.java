package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.classes.ClassMapper;
import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;

public class ClassApplyService {
	private ClasspaymentMapper classapplymapper;

//	public int paymentinsert(ClassPaymentDTO paymentdto) {
//		SqlSession session = getSqlSession();
//		
//		classapplymapper = session.getMapper(ClasspaymentMapper.class);
//		
//		int result = classapplymapper.classpaymentinsert(paymentdto);
//		
//		if(result>0) {
//			session.commit();
//		} else {
//			session.rollback();
//		}
//		session.close();
//		
//		return result;
//	}


	public int classmemberinsert(ClassMemberDTO classmemberdto, ClassPaymentDTO paymentdto) {
		SqlSession session = getSqlSession();
		
		classapplymapper = session.getMapper(ClasspaymentMapper.class);
		
		int result = 0;
		
		int result1 = classapplymapper.classmemberinsert(classmemberdto);
		int result2 = classapplymapper.classpaymentinsert(paymentdto);
		
		if( result1>0 && result2>0) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		session.close();
		
		return result;
	}

}
