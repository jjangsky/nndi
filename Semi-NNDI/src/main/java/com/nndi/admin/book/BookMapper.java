package com.nndi.admin.book;

import java.util.List;

import com.nndi.model.commondto.BookInfoDTO;

public interface BookMapper {

	/* 도서 리스트 전체 조회 */
	List<BookInfoDTO> selectAllBookList();
	
	/* 폐기 도서 리스트 전체 조회 */
	List<BookInfoDTO> selectDeleteBookList();
}
