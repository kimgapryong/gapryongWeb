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
    	BoardDTO notice = (BoardDTO)request.getAttribute("board");
    	int num = (Integer)request.getAttribute("num");
    	int nowpage = (Integer)request.getAttribute("pageNum");
    %>
 </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <!-- header include-->
	<%@ include file = "../step06/navi.jsp" %> <!-- 내 어린 시절 우연히 -->
<script>
	function checkForm(){
		if(!document.newWrite.name.value){
			alert("성명을 입력하세요");
			document.newWrite.name.focus();
			return false;
		}
		if(!document.newWrite.title.value){
			alert("제목을 입력하세요");
			document.newWrite.title.focus();
			return false;
		}
		if(!document.newWrite.contents.value){
			alert("내용을 입력하세요");
			document.newWrite.contents.focus();
			return false;
		}
	}
</script>
<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h1 class="big big-2">Contact</h1>
            <h2 class="mb-4">Contact</h2>
          </div>
        </div>
        
        <div class="row no-gutters block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="./BoardUpdateAction.do?num=<%= notice.getNum() %>&pageNum=<%=nowpage %>" onsubmit = "return checkForm()" class="bg-light p-4 p-md-5 contact-form" name="newWrite" method="post">
              <div class="form-group">
                <input type="text" class="form-control" name="name" value="<%=notice.getName() %>" placeholder="ID">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="Game Name" value="<%=notice.getSubject() %>">
              </div>
              <div class="form-group">
                <textarea name="contents" cols="30" rows="9" class="form-control" placeholder="Message"<%=notice.getContent() %>></textarea>
              </div>
             <div class="form-group d-flex justify-content-between">
    			<c:set var="userId" value="<%=notice.getId() %>"/>
    			<c:if test="${sessionId==userId}">
    				<input type="submit" class="btn btn-info" value ="수정"/>
    			</c:if>
    			<a href="./BoardListAction.do?pageNum=<%=nowpage %>">되돌아가기</a>
			</div>

            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/mikus.jpg);"></div>
          </div>
        </div>
      </div>
    </section>
		
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