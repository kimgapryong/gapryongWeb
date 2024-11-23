<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	String origin = request.getParameter("origin");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String email = mail1 +'@' + mail2;
%>
<sql:setDataSource var = "dataSource"
url = "jdbc:oracle:thin:@localhost:1521:xe"
driver = "oracle.jdbc.driver.OracleDriver" user="C##dbexam" password = "m1234"/>
<sql:update dataSource="${dataSource}" var = "resultSet">
update member set id = ?, password = ?, name =?, email = ? where id = ?
<sql:param value="<%= id %>"/>
<sql:param value="<%= pw %>"/>
<sql:param value="<%= name %>"/>
<sql:param value="<%= email %>"/>
<sql:param value="<%= origin %>"/>
</sql:update>
<c:if test = "${resultSet>=1}">
<c:redirect url="resultMember.jsp?msg=3"/>
</c:if>
</body>
</html>