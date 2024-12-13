<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Clark - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="../resources/css/open-iconic-bootstrap.min.css">
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
	border: 1px solid red;
	margin: 200px 0 100px;
}
</style>

<script>
	function checkForm(){
		if(!document.newMember.id.value){
		alert("아이디를 입력해주세요")
		return false;
		}
		if(!document.newMember.exampleInputPassword1.value){
			alert("비밀번호를 입력해주세요")
			return false;
			}
		if(!document.newMember.exampleInputPassword2.value){
			alert("비밀번호를 확인해주세요")
			return false;
			}
		if(!document.newMember.name.value){
			alert("이름을 입력해주세요")
			return false;
			}
		if(!document.newMember.exampleInputEmail1.value){
			alert("이메일을 입력해주세요")
			return false;
			}
		document.newMember.submit();
	}
</script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<!-- header include-->
	<%@ include file="/step06/navi.jsp"%>
	<div class="container mt-5 pt-1">
	<div class="jumbotron bg-secondary mt-5">
		<h1 class ="text-center">회원 가입</h1>
	</div>
	</div>
	
	<div class="container">
		<form name = "newMember" action='<c:url value="/member/processAddMember.jsp"/>' method="post">
			<div class="form-group">
				<label for="exampleInputPassword1">ID</label> <input
					type="text" class="form-control" name="id" 
					placeholder="ID">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" name="exampleInputPassword1"
					placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword2">RePassword</label> <input
					type="password" class="form-control" name="exampleInputPassword2"
					placeholder="RePassword">
			</div>
				<div class="form-group">
				<label for="name">Name</label> <input
					type="text" class="form-control" name="name"
					placeholder="Name">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" name="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email">
			</div>
			<div class="form-group mt-5">
				<input
					type="button" class="form-control btn btn-promary" 
					 value="Submit" onclick="checkForm()">
			</div>
		</form>
	</div>

	<!-- footer include -->
	<%@ include file="/step06/footer.jsp"%>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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

</body>
</html>