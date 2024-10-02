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
	<%@ include file = "navi.jsp" %>
		<div class="container-fluid bg-dark">
			<h1>게임 목록</h1>
		</div>
		<div class="container">
			<div class="row">
				<table width ="100%">
					<tr>
						<td align="left">
							<a href="" class="btn btn-danger">게임 목록 리스트 모두 삭제하기</a>
						</td>
						<td align="right">
							<a href="" class="btn btn-success">구매하기</a>
						</td>
					</tr>
				</table>
			</div> <!-- row -->
			<div class="row">
				<table width ="100%">
					<tr>
						<th>게임 아이디 - 게임 이름</th>
						<th>장르</th>
						<th>개발자</th>
						<th>좋아요 수</th>
						<th>삭제</th>
					</tr>
					<%
						int sum = 0;
						ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
						if(cartList == null) cartList = new ArrayList<Product>();
						for(int i =0; i < cartList.size(); i++){
							Product product = cartList.get(i);
							sum += product.getQuantity();
							
					%>
					<tr>
						<td><%=product.getProductId()%> - <%= product.getPname() %></td>
						<td><%= product.getDescription() %></td>
						<td><%= product.getProgramName() %></td>
						<td><%=product.getQuantity()%></td>
						<td><a href="" class="badge badge-danger">삭제</a></td>
					</tr>
					
					<%
						}
					%>
					<tr>
						<th></th>
						<th></th>
						<th>총액</th>
						<th><%=sum %></th>
						<th></th>
					</tr>
				</table>
			</div> <!-- row -->
		</div>
	
	
<!-- footer include -->
    <%@ include file = "footer.jsp" %>
  

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