<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>  
<%@ page import="dao.ProductRepository" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* String id = request.getParameter("cartId");
		if(id == null || id.trim().equals("")){
			response.sendRedirect("index.jsp#projects");
			return;
		} */
		
		//session.invalidate();
		
		//Clear을 이용한 세션 초기화
		 ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");	
		list.clear();
		
		
		response.sendRedirect("cart.jsp");
	%>
</body>
</html>