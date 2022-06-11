package com.nndi.client.book;

import java.util.List;

import com.nndi.model.commondto.BookInfoDTO;

public interface ClientBookMapper {

	List<BookInfoDTO> selectAllBookList();

}
