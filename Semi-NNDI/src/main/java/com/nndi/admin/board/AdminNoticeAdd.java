package com.nndi.admin.board;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.NoticeDTO;

@WebServlet("/login/admin/noticeAdd")
public class AdminNoticeAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String rootLocation;
	private int maxFileSize;
	private String encodingType;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getRequestDispatcher("/WEB-INF/views/admin/board/NoticeAdd.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(ServletFileUpload.isMultipartContent(request)) {
			
			String rootLocation = getServletContext().getRealPath("/");
			int maxFileSize = 1024 * 1024 * 50;
			String encodingType = "UTF-8";
			
			System.out.println("파일 저장 ROOT 경로 : " + rootLocation);
			System.out.println("최대 업로드 파일 용량 : " + maxFileSize);
			System.out.println("인코딩 방식 : " + encodingType);
			
			String fileUploadDirectory = rootLocation + "/resources/upload/original/";
			
			File directory = new File(fileUploadDirectory);
			
			/* 파일 저장경로가 존재하지 않는 경우 디렉토리를 생성한다. */
			/* 폴더를 한 개만 생성할거면 mkdir, 상위 폴더도 존재하지 않으면 한 번에 생성하란 의미로 mkdirs를 이용한다. */
			if(!directory.exists()) {
				System.out.println("폴더 생성 (중간 폴더 포함 모두 파일이 없을때 딱한번 출력됨): " + directory.mkdirs());
			}
			
			List<Map<String, String>> fileList = new ArrayList<>();		//파일에 대한 정보 (누가 어떤게시글에 어떤것을 저장하는지)
			Map<String, String> parameter = new HashMap<>();			//다른파일에 대한 정보
			
			/* 파일을 업로드할 시 최대 크기나 임시 저장할 폴더의 경로 등을 포함하기 위한 인스턴스 */
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
	        fileItemFactory.setRepository(new File(fileUploadDirectory));
	        fileItemFactory.setSizeThreshold(maxFileSize);
	        
	        /* request 에서 온 입력값들을 하나하나 파싱하는 작업, 파싱 후 리스트에 담자 */
	        ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
	        fileUpload.setHeaderEncoding(encodingType);		
	        
	        try {
				List<FileItem> fileItems = fileUpload.parseRequest(request);
				
				for(FileItem item : fileItems) {
					
					/*
					 * isFormField 라는 출력되는 속성 중 하나인 아이의 반환 값이 
					 * true이면 file이 아닌것
					 * false이면 file인것
					 */
					System.out.println(item); 		// 요청한 모든 정보가 다 한개씩 나눠서 받아지게 하는 순서
				
				}
				
				/* 태그가 여러개가 오니, 반복문으로 돌려서 하자 */
				
				for(int i = 0; i <fileItems.size() ; i++) {
					FileItem item = fileItems.get(i);
					
					if(!item.isFormField()) {	//입력값이 파일이라면
						
						if(item.getSize() > 0) {//  파일크기가 0보다 큰 아이만 저장하자
							
							/* 디비에 저장할 새로운 이름만들기, 저장경로에 파일저장하기, 하나의 컬렉션으로 반환하기 ---- 본격적인 작업 */
							String fieldName = item.getFieldName(); //우리가 지정한 웹의 name값
							String originFileName = item.getName(); //사용자가 올린 실제 파일이름
							
//							System.out.println("fieldName " + fieldName + " originFileName " + originFileName);
							
							/* 파일이름을 꼭 변경해서 따로 저장해두자~~~ -한글과 공백인식문제, 파일이름 중복 */
							
							int dot = originFileName.lastIndexOf(".");  //파일확장자 자르기~
							String ext = originFileName.substring(dot); //파일확장자만 잘라서 가져오는 작업임다
							
							System.out.println("확장자 : " +ext);
							System.out.println(UUID.randomUUID().toString().replace("-", "")+ext);		//랜덤한 시리얼넘버를 패키지에서 제공하는 난수로 가져와서 파일명으로 저장해두자.
							
							String randomFileName = UUID.randomUUID().toString().replace("-", "")+ ext;
							
							File storeFile = new File(fileUploadDirectory + "/" + randomFileName);
							
							
							/* 바꾼 이름으로 파일에 저장 */
							item.write(storeFile);
							
							/* 파일에 필요한 정보를 Map에 담자 Db 에저장할 속성을 담자*/
							Map<String, String> fileMap = new HashMap<String, String>();
							fileMap.put("fieldName", fieldName);
							fileMap.put("originFileName", originFileName);
							fileMap.put("randomFileName", randomFileName);
							fileMap.put("savePath", fileUploadDirectory);
							fileMap.put("uploadUser", ((ManagerDTO)request.getSession().getAttribute("loginMember")).getManagerId());
							
							fileList.add(fileMap);
							
							System.out.println(fileList);
								
						}
						
					} 
					
					
					else {					//파일태그가 아닌 일반 인풋일 경우
						
						System.out.println("input의 name: " + item.getFieldName());
						System.out.println("input의 value: " + new String(item.getString().getBytes("ISO-8859-1"),encodingType));		//해당 인풋태그에 사용자가 입력한 value를 가져올때 하는 방법
						
						parameter.put(item.getFieldName(), new String(item.getString().getBytes("ISO-8859-1"),encodingType));
						
					}
				}
				
				System.out.println("===========================================");
				for(Map<String, String> file : fileList) {
					System.out.println(file);
				}
				
				
				System.out.println("===========================================");
				System.out.println(parameter);
				
				/* 이제 디비에 넘기기 좋게 담아서 넘기자 */
				NoticeDTO addNotice = new NoticeDTO();
				
				addNotice.setManagerId(parameter.get("managerId"));
				addNotice.setCateNum(Integer.valueOf(parameter.get("cateNum")));
				addNotice.setTitle(parameter.get("title"));
				addNotice.setContent(parameter.get("content"));
				
				
				
				
				
				
	        } catch (Exception e) {		//파일업로드 하다가 에러가 발생하면 저장되던 모든 파일을 롤백하자
	        	e.printStackTrace();
	        	
	        	int cnt = 0;
	        	
	        	for(int i=0; i < fileList.size(); i++) {
	        		Map<String, String> file = fileList.get(i);
	        		
	        		File deleteFile = new File(fileUploadDirectory + "/" + file.get("randomFileName"));
	        		
	        		boolean isDeleted = deleteFile.delete();
	        		
	        		if(isDeleted) {
	        			cnt++;
	        		}
	        	}
	        	
	        	if(cnt==fileList.size()) {
	        		System.out.println("업로드 실패 파일 삭제 완료");
	        	} else {
					System.out.println("업로드 실패 파일 삭제 실패");
				}
	        }
			

		} else {
			System.out.println("encType이 존재하지 않고 넘어옴");
		}
	
	}

}
