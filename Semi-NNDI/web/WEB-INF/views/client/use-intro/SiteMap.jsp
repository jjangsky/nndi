<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
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
                    <a href="directions.html">오시는 길</a>
                    <br>
                    <br>
                    <a href="siteMap.html">사이트 맵</a>
                </td>
            </tr>
        </table>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv">
            <tr>
                <td>
                    <strong> 이용 안내</strong> <br><br>
                    <a href="../mainpage/centerMainPage.html">시설 안내</a>
                    <br>
                    <br>
                    <a href="">대관 안내</a>
                    <br>
                    <br>
                    <a href="">강사 안내</a>
                    <br>
                    <br>
                    <a href="userAgreement.html">이용 약관</a>
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
                  <a href="">공지사항</a>
                  <br>
                  <br>
                  <a href="">문의(QNA)</a>
                  <br>
                  <br>
                  <a href="" >칭찬하기</a>
                  <br>
                  <br>
                  <a href="">자주 묻는 질문</a>
                  <br>
                  <br>
                  <a href="">민원</a>
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
                <a href="">도서관</a>
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
                <a href="" >문화 강좌</a>
                <br>
                <br>
                <a href="">체육 강좌</a>
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