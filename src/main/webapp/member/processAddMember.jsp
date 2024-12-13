<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw1 = request.getParameter("exampleInputPassword1");
	String pw2 = request.getParameter("exampleInputPassword2");
	String name = request.getParameter("name");
	String email = request.getParameter("exampleInputEmail1");
%>
<sql:setDataSource var = "dataSource"
url = "jdbc:oracle:thin:@localhost:1521:xe"
driver = "oracle.jdbc.driver.OracleDriver" user="C##dbexam" password = "m1234"/>
<sql:update dataSource="${dataSource}" var = "resultSet">
insert into member values(?,?,?,?)
<sql:param value="<%= id %>"/>
<sql:param value="<%= pw1 %>"/>
<sql:param value="<%= name %>"/>
<sql:param value="<%= email %>"/>
</sql:update>
<c:if test = "${resultSet>=1}">
<c:redirect url="resultMember.jsp?msg=1"/>
</c:if>
</body>
</html>