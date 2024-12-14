<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<%@ page import = "mvc.model.BoardDTO" %>
<jsp:useBean id="productDAO" class = "dao.ProductRepository" scope = "session"></jsp:useBean>



<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Clark - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <%
		int pageNum = ((Integer)request.getAttribute("pageNum")).intValue();
		List boardList = (List)request.getAttribute("boardlist");
		int total_record = (Integer)request.getAttribute("total_record");
		int total_page = (Integer)request.getAttribute("total_page");
	%>
	

  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <!-- header include-->
	<%@ include file = "/step06/navi.jsp" %> <!-- 내 어린 시절 우연히 -->

<script>
	function checkForm(){
		if(${sessionId == null}){
			alert("로그인해 주세요");
			location.href ="./member/loginMember.jsp";
			return false;
		}
	    location.href = "./BoardWriteForm.do?id=${sessionId}";
	}
</script>
	<div class="container">
		<form action='<c:url value="/BoardListAction.do"></c:url>'method ="post">
			<div class="text-right">
				<span class="badge badge-success">전체 <%= total_record %> 건</span>
			</div>
			<div style="padding-top:20px">
				<table class = "table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>수정일</th>
						<th>조회</th>
						<th>글쓴이</th>
					</tr>
					<%
						for(int i =0; i < boardList.size(); i++){
							BoardDTO boardDTO = (BoardDTO)boardList.get(i);
					%>
					<tr>
						<td><%= boardDTO.getNum() %></td>
						<td><a href="./BoardViewAction.do?num=<%= boardDTO.getNum()%>&pageNum=<%=pageNum%>"><%= boardDTO.getSubject() %></a></td>
						<td><%= boardDTO.getRegist_day() %></td>
						<td><%= boardDTO.getUpdate_day() %></td>
						<td><%= boardDTO.getHit() %></td>
						<td><%= boardDTO.getName() %></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			
			<div class="text-center">
				<table width="100%">
					<tr>
						<td width="150px" align="left">
							<select name="items" class="txt">
								<option value="subject">제목에서</option>
								<option value="content">본문에서</option>
								<option value="name">글쓴이에서</option>
							</select>
							<input type="text" name="text"/>
							<input type="submit" class = "btn btn-primary" value="검색"/>
							
							<a class = "btn btn-light"href='<c:url value="/BoardListAction.do?pageNum=1"></c:url>'>검색 초기화</a>
						</td>
						<td width="100" align="right">
							<a href="#" class="btn btn-warning" onclick="checkForm()">글쓰기</a>
						</td>
					</tr>
				</table>
			</div>
			<!-- 페이징 구조 추가 -->
			<div align ="center">
				<c:set var="pageNum" value="<%=pageNum %>"/>
				<c:forEach var="i" begin="1" end="<%= total_page %>">
					<c:if test="${items != null && text != null}">
						<a href='<c:url value="/BoardListAction.do?pageNum=${i}&items=${items}&text=${text}"/>'>
							<c:choose>
								<c:when test="${pageNum == i }"><b>[${i}]</b></c:when>
								<c:otherwise>[${i}]</c:otherwise>
							</c:choose>
						</a>
					</c:if>
						<c:if test="${items == null && text == null}">
						<a href='<c:url value="/BoardListAction.do?pageNum=${i}" />'>
							<c:choose>
								<c:when test="${pageNum == i }"><b>[${i}]</b></c:when>
								<c:otherwise>[${i}]</c:otherwise>
							</c:choose>
						</a>
					</c:if>
				</c:forEach>
			</div>
		</form>
	</div>

<!-- footer include -->
    <%@ include file = "../step06/footer.jsp" %>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
</html>
