<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbconn</title>
</head>
<body>
<%
	Connection conn = null;
	
	
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##dbexam";
		String password = "m1234";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이버 등록 성공");
		
		conn = DriverManager.getConnection(url,user,password);
		System.out.println("접속 성공");
		
		if(conn != null )System.out.println("새끈빠끈");
		
	}catch(Exception e){
		System.out.println("데이터베이스 연결이 실패 <br>");
		System.out.println("Exception" + e.getMessage());
	}
%>
</body>
</html>