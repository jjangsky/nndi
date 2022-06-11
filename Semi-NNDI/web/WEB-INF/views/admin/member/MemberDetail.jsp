
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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin MemberDetailList</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
	   	<div>
		    <div class="post title">
		        <h3 class="top">회원 상세내역 조회</h3>
		    </div>
  		</div>
	    <div class="post list">
	    <input type="hidden" id="id" name="num" value="${ detailMemberAlive.id }">
         <table class="tb_02">
        	 <tbody>
	            <tr>
	              <th>성명</th>
	              <td>${ detailMemberAlive.name }</td>
	            </tr>
	            <tr>
	              <th>성별</th>
	              <td>${ detailMemberAlive.gender }</td>
	            </tr>
	            <tr>
	              <th >아이디</th>
	              <td>${ detailMemberAlive.id }</td>
	            </tr>
	            <tr>
	              <th >	비밀번호</th>
	              <td>****************</td>
	            </tr>
	            <tr>
	              <th >생년월일</th>
	              <td>${ detailMemberAlive.birth }</td>
	            </tr>
	            <tr>
	              <th>이메일</th>
	              <td>${ detailMemberAlive.email }</td>
	            </tr>
	            <tr>
	              <th>주소</th>
	              <td>${ detailMemberAlive.address }</td>
	            </tr>
	            <tr>
	            
	              <th>연락처</th>
	              <td>${ detailMemberAlive.phone }</td>
	            </tr>
	            <tr>
	              <th>마지막 로그인</th>
	              <td>${ detailMemberAlive.lastLogin }</td>
	            </tr>
	            <tr>
	              <th>회원 상태</th>
	              <td>${ detailMemberAlive.userStatus }</td>
	            </tr>
	          </tbody>
	          </table> 
	      </div>
	  <div class="butmar40">
      <button onclick="deleteEdit()" class="btn btn-primary imbackColor1">비밀번호 초기화</button>
      <button type="button" class="btn btn-primary imbackColor1" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/memberDetailBookRentList.do?id=${ detailMemberAlive.id }'">대출내역 조회</button>
      <button type="button" class="btn btn-primary imbackColor1" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/memberDetailBookRentList.do?id=${ alive.id  }'">수강내역 조회</button>
    </div>
    <div class="butmartop1">
      <button type="button" class="btn btn-secondary" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/memberList'">목록으로</button>
    </div>
  </section>

  	<script>
    function deleteEdit() {
      var txt;
      if (confirm("해당 이용자의 비밀번호를 초기화 하시겠습니까?")) {
        alert("비밀번호가 초기화 되었습니다.\n PassWord : 0000");
      } else {
        
      }
      
    }
    </script>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>