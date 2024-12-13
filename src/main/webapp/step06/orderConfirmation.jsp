<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class = "dao.ProductRepository" scope = "session"></jsp:useBean>
<%@ include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
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
	  <%
		String name ="";
		String email ="";
		String phone = "";
		String card = "";
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies){
			if (cookie.getName().equals("home1")) name = URLDecoder.decode(cookie.getValue());
			if (cookie.getName().equals("home2")) email = URLDecoder.decode(cookie.getValue());
			if (cookie.getName().equals("home3")) phone = URLDecoder.decode(cookie.getValue());
			if (cookie.getName().equals("home4")) card = URLDecoder.decode(cookie.getValue());
		}
	%>
	
	  <!-- header include-->
	<%@ include file = "navi.jsp" %>
	<p>이름 : <%= name %></p>
	<p>이메일 : <%= email %></p>
	<p>전화번호 : <%= phone %></p>
	<p>카드번호 : <%= card %></p>
	
	<table class="table table-striped table-dark">
					<tr>
						<th>게임 아이디 - 게임 이름</th>
						<th>장르</th>
						<th>개발자</th>
						<th>좋아요 수</th>
						<th>삭제</th>
					</tr>
					<%
						int sum = 0;
						String sql = "select * from addCart"; 
						//ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
						//if(cartList == null) {cartList = new ArrayList<Product>();}
					/* 	for(int i =0; i < cartList.size(); i++){
							Product product = cartList.get(i); */
						pstmt = conn.prepareStatement(sql);
					    rs = pstmt.executeQuery();
					    while(rs.next()){
							sum +=  rs.getInt("quantity");
							
					%>
					<tr>
						<td><%=rs.getString("productId")%> - <%= rs.getString("pname") %></td>
						<td><%= rs.getString("p_description") %></td>
						<td><%= rs.getString("programname") %></td>
						<td><%= rs.getInt("quantity")%></td>
						<td><a href="./removeCart.jsp?id=<%= rs.getString("productId") %>" class="badge badge-light">삭제</a></td>
					</tr>
					
					<%
						}
					    if (rs != null) rs.close();
				        if (pstmt != null) pstmt.close();
				        if (conn != null) conn.close();
					%>
					<tr>
						<th></th>
						<th></th>
						<th>총액</th>
						<th><%=sum %></th>
						<th></th>
					</tr>
				</table>
	
	
	
	
	
	

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