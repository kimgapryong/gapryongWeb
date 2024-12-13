<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class = "dao.ProductRepository" scope = "session"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Clark - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/animate.css">
    
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../resources/css/magnific-popup.css">

    <link rel="stylesheet" href="../resources/css/aos.css">

    <link rel="stylesheet" href="../resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="../resources/css/flaticon.css">
    <link rel="stylesheet" href="../resources/css/icomoon.css">
    <link rel="stylesheet" href="../resources/css/style.css">
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <!-- header include-->
	<%@ include file = "/step06/navi.jsp" %>
	

  <div class="container text-center" id="form_layout">
  <h3>Please sign in</h3>
  
  <form name="loginMember" class="form-horizontal"
			action="<c:url value="/member/processLoginMember.jsp"/>" method="post">
			<div class="form-group row justify-content-center my-4">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id"
						required autofocus>
				</div>
			</div>
			<div class="form-group row justify-content-center my-4">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="pw" type="text" class="form-control"
						placeholder="password">
				</div>
			</div>
			<div class="form-group row justify-content-center">
			   <div class="col-sm-5">
			      <div class="d-grid gap-1">
			      <%
					String error = request.getParameter("error");
						if (error != null) {
							out.println("<div class='alert alert-danger mt-3'>");
							out.println("아이디와 비번을 확인해 주세요.");
							out.println("</div>");
						}
					%>
			       <button class="mt-1 btn btn-lg btn-success btn-block" type="submit">로그인</button>
			      </div>

					

				</div> 
			</div>  
	</form>
	
</div>

<!-- footer include -->
    <%@ include file = "/step06/footer.jsp" %>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="../resources/js/jquery.min.js"></script>
  <script src="../resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../resources/js/popper.min.js"></script>
  <script src="../resources/js/bootstrap.min.js"></script>
  <script src="../resources/js/jquery.easing.1.3.js"></script>
  <script src="../resources/js/jquery.waypoints.min.js"></script>
  <script src="../resources/js/jquery.stellar.min.js"></script>
  <script src="../resources/js/owl.carousel.min.js"></script>
  <script src="../resources/js/jquery.magnific-popup.min.js"></script>
  <script src="../resources/js/aos.js"></script>
  <script src="../resources/js/jquery.animateNumber.min.js"></script>
  <script src="../resources/js/scrollax.min.js"></script>
  
  <script src="../resources/js/main.js"></script>
    
  </body>
</html>