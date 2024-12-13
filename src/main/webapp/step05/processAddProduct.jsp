<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	//String filename = "";
	String realFolder = application.getRealPath("/resources/images/product/");
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	
	//이미지 등록시 필요한 MyltipartRequest의 생성자 함수를 이용하여 이미지 업로드에 대한 정보 설정
	MultipartRequest multi = new MultipartRequest(request,realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    String productId = multi.getParameter("addProduct");
    String pName = multi.getParameter("gameName");
    String programer = multi.getParameter("programerName");
    String description = multi.getParameter("genre");

    
    Enumeration files = multi.getFileNames();
    String fname = (String)files.nextElement();
    String fileName = multi.getFilesystemName(fname);
     
    PreparedStatement stmt = null;
	String sql = "insert into product values(?, ?,?,?,?,?)";
	stmt = conn.prepareStatement(sql);
	
	
	  	stmt.setString(1, productId); 
	    stmt.setString(2, pName);      
	    stmt.setString(3, programer);  
	    stmt.setString(4, description); 
	    stmt.setString(5, fileName);
	    stmt.setInt(6, 7000);
	    
	 	stmt.executeUpdate();  
	    
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
   // ProductRepository dao = ProductRepository.GetInstance();
    
   /*  Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(pName);
   	newProduct.setProgramName(programer);
   	newProduct.setDescription(description);
   	newProduct.setFilename(fileName); */
    
   /*  dao.addProduct(newProduct);
    System.out.print(newProduct.getProductId());
    System.out.print("test");    
    System.out.print(dao); */
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