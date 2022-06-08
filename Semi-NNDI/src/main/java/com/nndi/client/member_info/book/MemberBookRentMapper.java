package com.nndi.client.member_info.book;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.BookRentDTO;
import com.nndi.model.joindto.client.member_info.book.MemberAndBookRentDTO;

public interface MemberBookRentMapper {

	List<MemberAndBookRentDTO> selectBookRentList(HttpSession loginSession);

}
