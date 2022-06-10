package com.nndi.client.book;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.book.BookMapper;
import com.nndi.model.commondto.BookInfoDTO;

public class ClientBookService {

	private ClientBookMapper mapper;
	
	public List<BookInfoDTO> selectAllBookList() {

		System.out.println("서비스 도착");
			
		SqlSession sqlSession = getSqlSession();
			
		mapper = sqlSession.getMapper(ClientBookMapper.class);
			
		List<BookInfoDTO> bookList = mapper.selectAllBookList();
			
		System.out.println("Service : " + bookList);
			
		return bookList;
		
		}

}
