<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		Cookie cook1 = new Cookie("home1", URLEncoder.encode(request.getParameter("name"),"utf-8"));
		Cookie cook2 = new Cookie("home2", URLEncoder.encode(request.getParameter("email"),"utf-8"));
		Cookie cook3 = new Cookie("home3", URLEncoder.encode(request.getParameter("phone"),"utf-8"));
		Cookie cook4 = new Cookie("home4", URLEncoder.encode(request.getParameter("card"),"utf-8"));
		
		//유효기간을 2시간으로 설정
		cook1.setMaxAge(2*60*60);
		cook2.setMaxAge(2*60*60);
		cook3.setMaxAge(2*60*60);
		cook4.setMaxAge(2*60*60);
		
		response.addCookie(cook1);
		response.addCookie(cook2);
		response.addCookie(cook3);
		response.addCookie(cook4);
		
		response.sendRedirect("orderConfirmation.jsp");
	%>
</body>
</html>