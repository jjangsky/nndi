<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/summingmem.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
	
		<div>
		    <div class="post title">
        		<h3 class="top">게시글 통계</h3>
    		</div>
		    <div class="new">
		      <h4 class="to">민원 게시글</h4>
		        <form action="">
		          <label>금일 날짜까지 조회합니다.</label>
		          <div class="supost">
		            <table>
		                <thead>
		                    <tr>
		                      <th>전체 게시글 수</th>
		                      <th>전체 조회수</th>
		                      <th>답변완료</th>
		                      <th>미답변</th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <tr>
		                        <td>100</td>
		                        <td>500</td>
		                        <td>80</td>
		                        <td>20</td>
		                    </tr>
		                </tbody>
		            </table>
		    	  </div>
        		</form>
        	  <h4 class="result"></h4>
    		</div>
		    <div class="total">
		      <h4 class="to">문의 게시글</h4>
		      <label>금일 날짜까지 조회합니다.</label>
		        <div class="supost">
		            <table>
		                <thead>
		                    <tr>
		                      <th>전체 게시글 수</th>
		                      <th>전체 조회수</th>
		                      <th>답변완료</th>
		                      <th>미답변</th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <tr>
		                        <td>100</td>
		                        <td>500</td>
		                        <td>80</td>
		                        <td>20</td>
		                    </tr>
		                </tbody>
		            </table>
		        </div>
    		</div>
		    <div class="dead">
		      <h4 class="to">칭찬 게시글</h4>
		      <label>금일 날짜까지 조회합니다.</label>
		          <div class="supost">
		            <table>
		                <thead>
		                    <tr>
		                        <th>전체 게시글 수</th>
		                        <th>전체 조회수</th>
		                        <th>답변완료</th>
		                        <th>미답변</th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <tr>
		                        <td>100</td>
		                        <td>500</td>
		                        <td>80</td>
		                        <td>20</td>
		                    </tr>
		                </tbody>
		            </table>
		        </div>
		    </div>
		  <div class="posttop">
		    <h4 class="to">공지사항 게시글 조회수 top5</h4>
		      <form action="">
		        <div class="supost2">
		          <table>
		              <thead>
		                  <tr>
		                      <th>번호</th>
		                      <th>제목</th>
		                      <th>문의유형</th>
		                      <th>작성자</th>
		                  </tr>
		              </thead>
		              <tbody>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		              </tbody>
		          </table>
		      </div>
		      </form>
		      <h4 class="result"></h4>
		  </div>
		  <div class="posttop">
		    <h4 class="to">민원 게시글 조회수 top5</h4>
		      <form action="">
		        <div class="supost2">
		          <table>
		              <thead>
		                  <tr>
		                      <th>번호</th>
		                      <th>제목</th>
		                      <th>문의유형</th>
		                      <th>작성자</th>
		                  </tr>
		              </thead>
		              <tbody>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		              </tbody>
		          </table>
		      </div>
		      </form>
		      <h4 class="result"></h4>
		  </div>
		  <div class="posttop">
		    <h4 class="to">문의 게시글 조회수 top5</h4>
		      <form action="">
		        <div class="supost2">
		          <table>
		              <thead>
		                  <tr>
		                      <th>번호</th>
		                      <th>제목</th>
		                      <th>문의유형</th>
		                      <th>작성자</th>
		                  </tr>
		              </thead>
		              <tbody>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		              </tbody>
		          </table>
		      </div>
		      </form>
		      <h4 class="result"></h4>
		  </div>
		  <div class="posttop">
		    <h4 class="to">FAQ 게시글 조회수 top5</h4>
		      <form action="">
		        <div class="supost2">
		          <table>
		              <thead>
		                  <tr>
		                      <th>번호</th>
		                      <th>제목</th>
		                      <th>문의유형</th>
		                      <th>작성자</th>
		                  </tr>
		              </thead>
		              <tbody>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		                  <tr>
		                    <td>100</td>
		                    <td>500</td>
		                    <td>80</td>
		                    <td>20</td>
		                  </tr>
		              </tbody>
		          </table>
		      </div>
		      </form>
		      <h4 class="result"></h4>
		  </div>
		</div>
	</section>
		
			  
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
