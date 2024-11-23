<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
	<c:choose>
		<c:when test='${sessionId eq "admin"}'>
			<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light site-navbar-target position-relative" id="ftco-navbar">
				<div class="container">
					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav nav ml-auto">
							<li class="nav-item"><a href="addProduct.jsp"
								class="nav-link">AddProduct</a></li>
							<li class="nav-item"><a
								href="index.jsp?edit=update#projects-section" class="nav-link">Product
									edit</a></li>
							<li class="nav-item"><a
								href="index.jsp?edit=delete#projects-section" class="nav-link">Product
									delete</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</c:when>
		<c:otherwise></c:otherwise>
	</c:choose>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light site-navbar-target position-relative" id="ftco-navbar">
			<!-- 관리자용 네브 -->
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Clark</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
			<!-- 사용자용 네브 -->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="index.jsp#home-section" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="index.jsp#about-section" class="nav-link"><span>About</span></a></li>
	          <li class="nav-item"><a href="index.jsp#resume-section" class="nav-link"><span>Resume</span></a></li>
	          <li class="nav-item"><a href="index.jsp#services-section" class="nav-link"><span>Services</span></a></li>
	          <li class="nav-item"><a href="index.jsp#skills-section" class="nav-link"><span>Skills</span></a></li>
	          <li class="nav-item"><a href="index.jsp#projects-section" class="nav-link"><span>Projects</span></a></li>
	          <li class="nav-item"><a href="index.jsp#blog-section" class="nav-link"><span>My Blog</span></a></li>
	          <li class="nav-item"><a href="index.jsp#contact-section" class="nav-link"><span>Contact</span></a></li>
	          <li class="nav-item">
	          <c:choose>
	          	<c:when test="${empty sessionId}">
	          		<div class="dropdown">
	          	<a href="#" class="nav-link  dropdown-toggle"><span>Information</span></a>
  				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  				<a href="<c:url value = "/member/loginMember.jsp"/>" class="dropdown-item">login</a>
  				<a href="<c:url value = "/member/addMember.jsp"/>" class="dropdown-item">sigin</a>
  	
	          	</div>
	          	</div>
	          	</c:when>
	       
	          <c:otherwise>
	          		<div class="dropdown">
	          	<a href="#" class="nav-link  dropdown-toggle"><span>Information</span></a>
  				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  						<a href="#" style ="color:orange"" class="dropdown-item">[<%=sessionId %> login]</a>
  						<a href="<c:url value = "/member/updateMember.jsp"/>" class="dropdown-item">update</a>
  						<a href="<c:url value = "/member/logoutMember.jsp"/>" class="dropdown-item">logout</a>
  				 	</div>
	          	</div>
	          </c:otherwise>
	             </c:choose>
	 
	          </li>
	          
	        </ul>
	      </div>
	    </div>
	  </nav>