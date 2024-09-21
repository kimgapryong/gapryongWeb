<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");
    String productId = request.getParameter("addProduct");
    String pName = request.getParameter("gameName");
    String programer = request.getParameter("programerName");
    String description = request.getParameter("genre");


    ProductRepository dao = ProductRepository.GetInstance();
    
    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(pName);
   	newProduct.setProgramName(programer);
   	newProduct.setDescription(description);
    
    dao.addProduct(newProduct);
    System.out.print(newProduct.getProductId()+"ttt");
    System.out.print("test");    
    System.out.print(dao);
    response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>