<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ include file="/step06/navi.jsp"%>
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
<style>
#form_layout {
	/* border:1px solid red; */
	margin: 200px 100px;
}

.form-group {
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<script>
	function checkForm(){
		if(!document.newMember.id.value){
			alert("아이디를 입력해주세요")
			return false;
		}
		if(!document.newMember.password.value){
			alert("비밀번호를 입력해주세요")
			return false;
		}
		if(!document.newMember.password_confirm.value){
			alert("비밀번호 확인을 입력해주세요")
			return false;
		}
		if(!document.newMember.name.value){
			alert("성명을 입력해주세요")
			return false;
		}

		if(!document.newMember.mail1.value || !document.newMember.mail2.value){
			alert("이메일을 입력해주세요")
			return false;
		}

		document.newMember.submit();
	}
</script>
<sql:setDataSource var="dataSource"
		url="jdbc:oracle:thin:@localhost:1521:xe"
		driver="oracle.jdbc.driver.OracleDriver" user="C##dbexam" password="m1234" />

		<sql:query dataSource="${dataSource}" var="resultSet">
   			SELECT * FROM member WHERE ID=?
   		<sql:param value="<%=sessionId%>" />
	</sql:query>
</head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

	<!-- header include-->

	<div class="container">
		<div class="mb-3">
			<div class="col">
				<h1 class="display-4 text-center pt-4 pb-4">회원 수정</h1>
			</div>
		</div>
		
		<c:forEach var="row" items="${resultSet.rows}">
		<c:set var="email" value="${row.email}"/>
		<c:set var="mail1" value="${email.split('@')[0]}"/>
		<c:set var="mail2" value="${email.split('@')[1]}"/>
		<form name="newMember" class="form-horizontal"
			action="<c:url value="/member/processUpdateMember.jsp"/>" method="post">
			<div class="row justify-content-around align-self-center">
				<div class="col-10 ">
					<div class="form-group  row justify-content-around">
					<label class="col-sm-2 ">아이디</label>
					<div class="col-sm-5">
						<input name="id" type="text" class="form-control" placeholder="id"
							required autofocus value="<c:out value='${row.id }'/>">
							<input name="origin" type="hidden" class="form-control" placeholder="id"
							required autofocus value="<c:out value='${row.id }'/>">
					</div>
				</div>

				<div class="form-group  row justify-content-around">
					<label class="col-sm-2">비밀번호</label>
					<div class="col-sm-5">
						<input name="password" type="password" class="form-control"
							placeholder="password" value="<c:out value='${row.password }'/>">
					</div>
				</div>
				<div class="form-group  row justify-content-around">
					<label class="col-sm-2">비밀번호확인</label>
					<div class="col-sm-5">
						<input name="password_confirm" type="password" class="form-control"
							placeholder="password confirm" value =""> 
					</div>
				</div>
				<div class="form-group  row justify-content-around">
					<label class="col-sm-2">성명</label>
					<div class="col-sm-5">
						<input name="name" type="text" class="form-control" value="<c:out value='${row.name }'/>">
					</div>
				</div>
				<div class="form-group  row justify-content-around">
					<label class="col-sm-2">이메일</label>
					<div class="col-sm-5">
						<input type="text" name="mail1" maxlength="50" value="<c:out value='${mail1}'/>">@ 
						<select
							name="mail2" id="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
						</select>
					</div>
				</div>
				<div class="form-group  row justify-content-around">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="button" class="btn btn-primary py-3 px-5" value="등록 "
							onclick="checkForm()"> <input type="reset"
							class="btn btn-primary py-3 px-5" value="취소 " onclick="reset()">
					</div>
				</div>
							
				</div>
			</div>
		</form>
		</c:forEach>
	</div>
	






	<!-- footer include -->
	<%@ include file="/step06/footer.jsp"%>


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
  <script>
  	$(function(){
  		//alert("킴쌤테스트")
  		init();
  		function init(){
  			setMailValue("${mail2}");
  		}
  		function setMailValue(val){
  			var selectMail = document.getElementById("mail2");
  			for(i =0, j = selectMail.length; i<j; i++){
  				if(selectMail.options[i].value == val){
  					selectMail.options[i].selected = true;
  					break;
  				}
  			}
  		}
  	})
  	
  	const form = document.newMember;
  		
  		function checkForm(){
  			if(!form.id.value){
  				alert("아아디를 입력하세요.");
  				form.id.focus();
  				return false;
  			}
  			if(!form.password.value){
  				alert("비번을 입력하세요.");
  				form.password.focus();
  				return false;
  			}
  			if(!form.password_confirm.value){
  				alert("비번을 확인하세요.");
  				form.password_confirm.focus();
  				return false;
  			}
  			if(form.password.value != form.password_confirm.value){
  				alert("비번을 동일하게 입력하세요")
  				form.password_confirm.focus();
  				return false;
  			}
  			form.submit();
  		}

  </script>
    
  </body>
</html>