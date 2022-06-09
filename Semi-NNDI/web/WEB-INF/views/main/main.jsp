<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/MainPage.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="${pageContext.servletContext.contextPath}/resources/javascript/client/client.js"></script>
<title>NNDI</title>
</head>
<body>

	<jsp:include page="../common/includepage/UserHeader.jsp"/>
	<button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/main'">관리자페이지로</button>
	
	
	<section>
  <table class="mainPageTable" >
    <tr>
      <td>
        <legend>공지사항</legend>
        <br><br>
          <img src="${pageContext.servletContext.contextPath}/resources/image/client/body_qus_1.png">
          체육 공공시설 운영 재개 안내
          <br>
          <br>
          <br>
          <ul>
            <li>그룹 기구필라테스 6월 개강 오픈 안내</li>
            <li>작은 도서관 운영 시간 변경 안내</li>
            <li>대관 승인 기준 안내</li>
            <li>강의실 201호 리모델링 안내</li>
          </ul>
          <legend>너나들이 QNA</legend>
          <br>
          <br>
          <ul>
            <li>인터넷 강좌 결제</li>
            <li>필라페스 개강 언제하나요?</li>
            <li>수영장 샤워실, 탈의실이 너무 추워요</li>
            <li>영어회화 수업 문의</li>
          </ul>
          <br><br>
      </td>
    </tr>
</table>
<table class="mainPageTable2">
  <tr>
    <td>
      <legend>자주 묻는 질문</legend>
      <br><br>
        <ul>
          <li>강의실 대관은 어떻게 하나요?</li>
          <li>휴관일은 어떻게 되나요?</li>
          <li>체육센터 각각 운영시간이 어떻게 되나요?</li>
          <li>강좌 환불을 하고 싶어요. 어떻게 해야하나요?</li>
        </ul>
        <button onclick="location.href='${pageContext.servletContext.contextPath}/site/location'">
        <img src="${pageContext.servletContext.contextPath}/resources/image/client/008.png"> 오시는 길</button>
        
        <button><img src="${pageContext.servletContext.contextPath}/resources/image/client/Search.png">강좌 둘러보기</button>
        <br>
        <button><img src="${pageContext.servletContext.contextPath}/resources/image/client/006.png">QNA문의</button>
        <button><img src="${pageContext.servletContext.contextPath}/resources/image/client/RequestCenter.png">대관 신청</button>
        <br>
        <br>
        <button onclick="location.href='${pageContext.servletContext.contextPath}/Account/first'">
        <img src="${pageContext.servletContext.contextPath}/resources/image/client/Accounting.png">회원 가입하기</button>
        
        <button onclick="window.open('https://blog.naver.com/romantic_muk2')">
        <img src="${pageContext.servletContext.contextPath}/resources/image/client/005.png"> <br>묵 2동 <br>도시재생 지원센터<br> 블로그 바로가기</button>
    </td>
  </tr>
</table>
</section>
	<jsp:include page="../common/includepage/UserFooter.jsp"/>
</body>
</html>