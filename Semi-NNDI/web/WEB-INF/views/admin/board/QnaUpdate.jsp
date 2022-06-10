<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/postAdd.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin QnA Detail View</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
		        <h3 class="top">QNA</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
		    <div class="post add">
		    	<form id="update" action="${pageContext.servletContext.contextPath}/login/admin/QnaRE" method="post">
		        	<input type="hidden" id="num" name="num" value="${ detailqna.num }" />
		            <label>QNA 내용</label>
		            <table>
		                <tr>
		                    <td class="td1">문의 제목</td>
		                    <td class="td2">${ detailqna.title }</td>
		                </tr>
		                <tr>
		                    <td class="td1">작성자</td>
		                    <td class="td2">${ detailqna.memId }</td>
		                </tr>
		                <tr>
		                    <td class="td1">내용</td>
		                    <td class="td2">${ detailqna.content }</td>
		                </tr>
		                <tr>
		                    <td class="td1">답변 여부</td>
		                    <td class="td2">${ detailqna.answerYn }</td>
		                </tr>
		            </table>
		            <label>답변자</label><br>
		            <input type="text" name="managerId" readonly value="${ sessionScope.loginMember.managerId }">
		             <label>답변 내용</label><br>
		            <textarea name="content" id="content" cols="30" rows="10" style="resize: none;" >${ requestScope.detailqna.answerContent }</textarea><br>
		            <c:choose>
		            	<c:when test="${ detailqna.answerYn eq 'N' }">
				            <button id="createpost" class="btns add" type="button">작 성 하 기</button>
		            	</c:when>
		            	<c:when test="${ detailqna.answerYn eq 'Y' }">
				            <button id="updatepost" class="btns add" type="button">수 정 하 기</button>
		            	</c:when>
		            </c:choose>
		            <button id="deletepost" class="btns" type="button" >삭 제 하 기</button>
			    </form>
		    </div>
		</div>
	  <script>
	  	const back = document.getElementById("back");
		const updatepost = document.getElementById("updatepost");
		const createpost = document.getElementById("createpost");
		const deletepost = document.getElementById("deletepost");
		back.onclick = function(){
		      let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
		      /* console.log('누름확인'); */
		      if (confirm(text) == true) {
		    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/qnaList"; 
		      }
		    };
		    
		    if(createpost){
			    createpost.onclick = function(){
			      let text = "답변을 작성하시겠습니까?\작성하시려면 '확인'을 누르세요.";
			      if (confirm(text) == true) {
			    	  document.getElementById("update").submit();
			      }
			    };
		    }
		    
		    if(updatepost){
			    updatepost.onclick = function(){
			      let text = "답변을 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
			      if (confirm(text) == true) {
			    	  document.getElementById("update").submit();
			      }
			    };
		    }
		    
		    deletepost.onclick = function(){
			      let text = "답변을 삭제하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
			      if (confirm(text) == true) {
			    	  location.href = "${pageContext.servletContext.contextPath}/login/admin/QnaDelete.do?num=${ detailqna.num }"; 
			      }
			    };
	  </script>
			  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
