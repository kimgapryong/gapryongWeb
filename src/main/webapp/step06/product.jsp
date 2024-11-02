<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
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
    
      <script>
     function addToCart(){
    	 if(confirm("눌러주세요")){
    		 document.addForm.submit();
    	 }else{
    		 document.addForm.reset();
    	 }
     }
  </script>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <!-- header include-->
	<%@ include file = "navi.jsp" %>
	<%@ include file = "dbconn.jsp" %>

	<div class="container">
		<section id="#" class="section bs-warning mt-5 ">
  		<div class="container position-relative mt-5">
  				<%
	  				String id = request.getParameter("id");
  	/* 			 	PreparedStatement pstmt = null;
  			    	ResultSet rs = null; */
  			    	String sql = "select * from product where productId = ?";
  			    	pstmt = conn.prepareStatement(sql);
  			    	pstmt.setString(1, id);
  			    	rs = pstmt.executeQuery();

	  			%>
  				<div class="row mt-5">
	  				<h1>상품 상세 정보</h1><br />
	  		
	  			
	  			</div>
	  			<br />
	  			<div class="row">
	  				<div class="col-md-6">
	  					<%
  			    	if (rs.next()) { %>
						    <p><b>상품코드 : </b><span><%= rs.getString("productId") %></span></p>
						    <p><b>게임 이름 : </b><span><%= rs.getString("pname") %></span></p>
						    <p><b>개발자 이름 : </b><span><%= rs.getString("programname") %></span></p>
						    <p><b>게임 장르 : </b><span><%= rs.getString("p_description") %></span></p>

						 <form action="./addLike.jsp?id=<%=rs.getString("productId")%>" name="addForm" method="post">
  					        <a href="./cart.jsp" class="btn btn-info">게임 보러가기 &raquo;</a>
  					        <a href="./index.jsp#projects-section" class="btn btn-secondary">상품 목록 &raquo;</a>
  					        <input onclick="addToCart();" class="btn btn-danger my-2" value="좋아요 &raquo;" type="button">
  					     </form>
  					     						<% } else { %>
						    <p>상품을 찾을 수 없습니다.</p>
						<% }

	  					%>
  					     
	  				</div>
	  				<div class="col-md-6">
	  				<div class="project img ftco-animate d-flex justify-content-center align-items-center" style="background-image: url(../resources/images/product/<%= rs.getString("filename")%>);">
	  				</div>
	  				<%
 	  					if (rs != null) rs.close();
 	    	            if (pstmt != null) pstmt.close();
 	    	            if (conn != null) conn.close();
  					     %>
	  			</div>
  		</div>
  	</section>
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