<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file = "dbconn.jsp" %>
<%
	String productId = request.getParameter("id");
	String sql = "select * from product where productId = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
	
	}	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Clark - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- CSS 파일들 -->
    <link rel="stylesheet" href="../resources/css/style.css">

    <style>
        input[type="file"] {
            opacity: 0;
        }
        .file-label {
            background-color: lightgray;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        #file-name {
            position: relative;
            top: -100px;
            right: -180px;
            display: block;
        }
    </style>
    
    <script>
    // 파일명을 업데이트하는 함수
    function updateFileName() {
        const input = document.getElementById("background");
        const fileNameLabel = document.getElementById("file-name");
        if (input.files.length > 0) {
            fileNameLabel.textContent = input.files[0].name;
        } else {
            fileNameLabel.textContent = "선택된 파일 없음";
        }
    }

    // 언어 변경 함수
    function changeLanguage(lang) {
        const fileLabelText = document.getElementById("file-label-text");
        const fileNameLabel = document.getElementById("file-name");
        
        if (lang === "ko") {
            fileLabelText.textContent = "파일 선택";
            fileNameLabel.textContent = "선택된 파일 없음";
        } else {
            fileLabelText.textContent = "Choose File";
            fileNameLabel.textContent = "No file chosen";
        }
    }
    

    </script>
</head>

<body>
    <!-- 한글과 영문 중에 원하는 언어를 선택할 수 있도록 설정 -->
    <fmt:setLocale value='<%= request.getParameter("language") != null ? request.getParameter("language") : "ko" %>'/>
    <fmt:bundle basename="bundle.language">

    <!-- header include -->
    <%@ include file="navi.jsp" %>

	
    <div class="container mt-5 pt-5">
        <div class="jumbotron">
            <form class="needs-validation" action="./processEditProduct.jsp" method="post" enctype="multipart/form-data" >
                <div class="row m-3">
                    <div class="col-6">
                        <h1><fmt:message key="titleEdit" /></h1>
                        <br />
                    </div>
                    <div class="col-6">
                        <h3>
                            <button type="button" onclick="changeLanguage('ko')">Korean</button> |
                            <button type="button" onclick="changeLanguage('en')">English</button>
                        </h3>
                    </div>
                </div>
			
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="addProduct"><fmt:message key="productId" /></label>
                        <input type="text" class="form-control" id="addProduct" name="addProduct" value="<%=rs.getString("productId")%>">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="gameName"><fmt:message key="pname" /></label>
                        <input type="text" class="form-control" id="gameName" name="gameName" value="<%= rs.getString("pname")%>">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="programerName"><fmt:message key="programName" /></label>
                        <input type="text" class="form-control" id="programerName" name="programerName" value="<%= rs.getString("programname")%>">
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="genre"><fmt:message key="description" /></label>
                        <input type="text" class="form-control" id="genre" name="genre" value="<%= rs.getString("p_description")%>" required>
                    </div>

                    <div class="col-md-3 mb-3">
                        <label for="background" class="file-label"><fmt:message key="filename" /><span id="file-label-text"></span></label>
                        
                        <input type="file" class="form-control" id="background" name="background"  onchange="updateFileName()" >

                        <span id="file-name"><fmt:message key = "send"></fmt:message></span>
                    </div>
                </div>

                <div class="row m-3">
                    <div class="col-6">
                        <input type="submit" class="btn btn-primary mb-3 btn-block" value="<fmt:message key='editbutton' />">
                    </div>
                </div>
            </form>
        </div>
    </div>
	<%
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	%>
    <!-- footer include -->
    <%@ include file="footer.jsp" %>
    </fmt:bundle>

    <!-- loader -->
    <!-- <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div> -->

    <!-- 스크립트 파일들 -->
    <script src="../resources/js/main.js"></script>
    <script src="../resources/js/validation.js?v=2"></script>
</body>
</html>
