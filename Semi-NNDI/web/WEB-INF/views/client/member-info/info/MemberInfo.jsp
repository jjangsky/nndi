<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/javascript/client/client.js"></script>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Account.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
	<title>너나들이 중랑</title>
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
</head>
<body>
<aside>
	<jsp:include page="../../../common/includepage/UserFindAside.jsp"/>
</aside>
<section>
    <div>
        <div class="post title">
            <h3 class="top">개인 정보 조회</h3>
        </div>
    </div>

    <div class="hc" style="float: right;">
        <button id="back" class="back">목록으로</button>
  </div>

    <div class="hc" >
        <div class="it">약관 동의</div>
        <div class="it first">회원정보 입력</div>
        <div class="it">가입 완료</div>
    </div>

    <div class="post add">
        <form action="${ pageContext.servletContext.contextPath }/Account/input" method="post" >
            <label>이름</label>
            <input type="text" name="uName" id="uName" value='${ loginMember.name }' readonly >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
				<c:set var="gender" value="${ loginMember.gender }"/>
				<c:if test="${ loginMember.gender eq 'M'}">
					<label>성별: </label>
            		<select id="ugender" name="selectGender" style="width: auto;">
                		<option value="male" id="male" selected>남</option>
            		</select>
				</c:if>
				<c:if test="${ loginMember.gender eq 'W'}">
					<label>성별: </label>
            		<select id="ugender" name="selectGender" style="width: auto;">
                		<option value="male" id="female" selected>여</option>
            		</select>
				</c:if>
				
            <br>

            <label for="uid" id="inputid">아이디:</label>   
            <input type="text" id="uid" name="userId" size="30" value='${ loginMember.id }' readonly>
    		<br>
    		
    		<label for="idQueNum" id="idQueNum">질문 답변</label>
    		<c:set var="idQueNum" value="${ loginMember.idQueNum }"/>
    		<c:if test="${ loginMember.idQueNum eq 1 }">
    			<option value="1"></option>
    		</c:if>
    		<c:if test="${ loginMember.idQueNum eq 2 }">
    			<option value="2"></option>
    		</c:if>
    		<c:if test="${ loginMember.idQueNum eq 3 }">
    			<option value="3"></option>
    		</c:if>
    		<c:if test="${ loginMember.idQueNum eq 4 }">
    			<option value="4"></option>
    		</c:if>
    		<c:if test="${ loginMember.idQueNum eq 5 }">
    			<option value="5"></option>
    		</c:if>
    		<c:if test="${ loginMember.idQueNum eq 6 }">
    			<option value="6"></option>
    		</c:if> 
    		<input type="text" id=idQueAnser" name="idQueAnswer" value='${ loginMember.idAnswer }' readonly>
    		<br>
            <label for="upwd" id="inputpwd">비밀번호: </label>  
            <input type="password" name="password" id="password" size="30" value='${ loginMember.pwd }' readonly> <p id="pwdresult"></p>
    
    		<p id="pwdresult2"></p> 
            <label for="upwd2" id="inputpwd2">비밀번호 확인: </label>
            <input type="password" name="password2" id="password2" size="30" value='${ loginMember.pwd }' readonly>
            
    		<br>
    		
            <label>이메일</label><input type="text" name="str_email01" id="str_email01" value='${ loginMember.email1 }' style="width:100px" readonly> 
            <input type="text" name="str_email02" id="str_email02" style="width:100px;" value='${ loginMember.email2 }' readonly>
                
                <br>
            <label for="birth" id="input">생년월일:</label>
            <input type="date" name="userBD" id="userBirthDate" size="30" value='${ loginMember.birth }' readonly> <p>
    
            
            <label for="address1"> 우편 번호: </label>
				<input type="text" name="zipCode" id="zipCode" value='${ loginMember.address1 }'  readonly>

			<label for="address2"> 주소: </label>            
				<input type="text" name="address1" id="address1" value='${ loginMember.address2 }' readonly>
				
			<label for="address3"> 상세 주소: </label>		
				<input type="text" name="address2" id="address2" value='${ loginMember.address3 }' readonly>

    		<br>
            <label for="phone" id="input">연락처: </label>
            
            
           	<c:set var="phone1select" value="${ loginMember.phone1 }"/>
			<c:if test="${ loginMember.phone1 eq 010}">
				<label>연락처:  </label>
           		<select name="selectUserPhone" style="width: auto;">
               		<option value="010" selected>010</option>
           		</select>
			</c:if>
			<c:if test="${ loginMember.phone1 eq 016}">
				<label>연락처:  </label>
           		<select name="selectUserPhone" style="width: auto;">
               		<option value="016" selected>016</option>
           		</select>
			</c:if>
			<c:if test="${ loginMember.phone1 eq 011}">
				<label>연락처:  </label>
           		<select name="selectUserPhone" style="width: auto;">
               		<option value="011" selected>011</option>
           		</select>
			</c:if>
			<c:if test="${ loginMember.phone1 eq 019}">
				<label>연락처:  </label>
           		<select name="selectUserPhone" style="width: auto;">
               		<option value="019" selected>019</option>
           		</select>
			</c:if>
            
            <input type="tel" name="phone2" size="4" id="phone2" value='${ loginMember.phone2 }'  readonly>
            <input type="tel" name="phone3" size="4" id="phone3" value='${ loginMember.phone3 }' readonly><p>
            
                <div style="margin-left: 40%;">
                    <button id="submitbutton">수정</button>
                    <button type="reset" id="submitbutton">취소</button>
                </div>
        </form>
    </div>
	
</section>

</body>
	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>