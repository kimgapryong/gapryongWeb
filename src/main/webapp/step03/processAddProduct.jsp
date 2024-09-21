<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");

	//String filename = "";
	String realFolder = application.getRealPath("/resources/images/product");
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	
	//이미지 등록시 필요한 MyltipartRequest의 생성자 함수를 이용하여 이미지 업로드에 대한 정보 설정
	MultipartRequest multi = new MultipartRequest(request,realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    String productId = multi.getParameter("addProduct");
    String pName = multi.getParameter("gameName");
    String programer = multi.getParameter("programerName");
    String description = multi.getParameter("genre");

    
    Enumeration files =  multi.getFileNames();
    String fname = (String)files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    ProductRepository dao = ProductRepository.GetInstance();
    
    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(pName);
   	newProduct.setProgramName(programer);
   	newProduct.setDescription(description);
   	newProduct.setFilename(fileName);
    
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