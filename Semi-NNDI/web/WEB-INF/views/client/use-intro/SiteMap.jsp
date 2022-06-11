<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/AsideButton.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <title>너나들이중랑</title>
</head>
<jsp:include page="/WEB-INF/views/common/includepage/UserHeader.jsp"/>
<body>
    <aside>
		<jsp:include page="/WEB-INF/views/common/includepage/NNDIIntroduceAside.jsp"/>
    </aside>
       
    <section style="float: left;">

    <div style="margin-left: 12%;">
        <h3 style="text-align: center"> 사이트 맵</h3><br><br>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv" >
            <tr>
                <td>
                    <strong> 너나들이 소개</strong> <br><br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/location'">오시는길</button>
                    <br>
                    <br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/SiteMap'">사이트맵</button>
                </td>
            </tr>
        </table>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv">
            <tr>
                <td>
                    <strong> 이용 안내</strong> <br><br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/CenterInfo'">시설 이용</button>
                    <br>
                    <br>
                    <a href="">대관 안내</a>
                    <br>
                    <br>
                    <a href="">강사 안내</a>
                    <br>
                    <br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/agreement'">이용약관</button>
                    <br>
                </td>
            </tr>
        </table>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv" >
          <tr>
              <td>
                  <strong> 고객 지원 센터</strong> <br><br>
                  <button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/notice'">공지 사항</button>
                  <br>
                  <br>
                  <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNABoardList'">문의 하기</button>
                  <br>
                  <br>
                  <button onclick="location.href='${pageContext.servletContext.contextPath}'">칭찬 하기</button>
                  <br>
                  <br>
                  <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/FAQList'">자주 묻는 질문</button>
                  <br>
                  <br>
                  <button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/complain'">민원 신청</button>
                  <br>
                  <br>
              </td>
          </tr>
      </table>
    </div>

    <div id="siteMapDiv2">
      <table id="siteMapDiv2" >
        <tr>
            <td>
                <strong> 시설 이용</strong> <br><br>
                <button onclick="location.href='${pageContext.servletContext.contextPath}/site/ClientBookInfo'">작은 도서관</button>
                <br>
                <br>
                <a href="">체육시설</a>
                <br>
                <br>
                <a href="">문화시설</a>
                <br>
            </td>
        </tr>
      </table>
    </div>

    <div id="siteMapDiv2">
      <table id="siteMapDiv2">
        <tr>
            <td>
                <strong> 강좌 안내</strong> <br><br>
                <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/CultureLand'">문화</button>
                <br>
                <br>
                <button	onclick="location.href='${pageContext.servletContext.contextPath}/login/board/ClassphList'">체육</button>
                <br>
            </td>
        </tr>
      </table>
    </div>
</section>
</body>
<br clear="both">
<jsp:include page="/WEB-INF/views/common/includepage/UserFooter.jsp"/>
</html>    