<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<<<<<<< HEAD
<%@ page import="java.util.Set, java.util.HashSet" %>
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
<jsp:useBean id="productDAO" class = "dao.ProductRepository" scope = "session"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Clark - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<<<<<<< HEAD
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
=======
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
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
  </head>
	<script>
		function deleteConfirm(id){
			if(confirm("해당 상품을 삭제하시겠습니까?") == true){
				location.href = "./deleteProduct.jsp?id="+id;
			}else{
				return;
			}
		}
	</script>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <!-- header include-->
	  <%@ include file = "dbconn.jsp" %>
	<%@ include file = "navi.jsp" %>
		<%
	    	String edit = request.getParameter("edit");
			if(edit == null) edit = "";
	    %>
	  <section id="home-section" class="hero">
		  <div class="home-slider  owl-carousel">
	      <div class="slider-item ">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row d-md-flex no-gutters slider-text align-items-end justify-content-end" data-scrollax-parent="true">
<<<<<<< HEAD
	          	<div class="one-third js-fullheight order-md-last img" style="background-image:url(${pageContext.request.contextPath}/resources/images/standby-1.png);">
=======
	          	<div class="one-third js-fullheight order-md-last img" style="background-image:url(../resources/images/standby-1.png);">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
	          		<div class="overlay"></div>
	          	</div>
		          <div class="one-forth d-flex  align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text">
		          		<span class="subheading">Hello!</span>
			            <h1 class="mb-4 mt-3">Welcome <span>My Portfolio</span></h1>
			            <p><a href="#" class="btn btn-primary py-3 px-4">Hire me</a> <a href="#" class="btn btn-white btn-outline-white py-3 px-4">My works</a></p>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>

	      <div class="slider-item">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row d-flex no-gutters slider-text align-items-end justify-content-end" data-scrollax-parent="true">
<<<<<<< HEAD
	          	<div class="one-third js-fullheight order-md-last img" style="background-image:url(${pageContext.request.contextPath}/resources/images/tungslagger_walk-4.png);">
=======
	          	<div class="one-third js-fullheight order-md-last img" style="background-image:url(../resources/images/tungslagger_walk-4.png);">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
	          		<div class="overlay"></div>
	          	</div>
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text">
		          		<span class="subheading">Hello!</span>
			            <h1 class="mb-4 mt-3">I'm a <span>Game Programers</span> based in London</h1>
			            <p><a href="#" class="btn btn-primary py-3 px-4">Hire me</a> <a href="#" class="btn btn-white btn-outline-white py-3 px-4">My works</a></p>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>
	    </div>
    </section>
   	<section id="home-Slider">
   		<div class="bd-example">
   		<div class="container">
   		   		<h1 class="text-center mt-5 jumbotron bg-primary">Poupler Game</h1>
   		</div>

  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
<<<<<<< HEAD
        <img src="${pageContext.request.contextPath}/resources/images/Brole.jpg" class="d-block w-50 mx-auto"  alt="...">
=======
        <img src="../resources/images/Brole.jpg" class="d-block w-50 mx-auto"  alt="...">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5 class=" font-weight-bold">브롤스타즈</h5>
          <p>다양한 환경에서 즐길수 있는 탄막슈팅 게임입니다</p>
        </div>
      </div>
      <div class="carousel-item">
<<<<<<< HEAD
        <img src="${pageContext.request.contextPath}/resources/images/Roblox.jpg" class="d-block w-50 mx-auto" alt="...">
=======
        <img src="../resources/images/Roblox.jpg" class="d-block w-50 mx-auto" alt="...">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5 class=" font-weight-bold">로블록스</h5>
          <p>멀티버스 세계에서 다양한 활동들을 체험하며 즐기십시오</p>
        </div>
      </div>
      <div class="carousel-item">
<<<<<<< HEAD
        <img src="${pageContext.request.contextPath}/resources/images/Minclapet.jpg" class="d-block w-50 mx-auto" alt="...">
=======
        <img src="../resources/images/Minclapet.jpg" class="d-block w-50 mx-auto" alt="...">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5 class=" font-weight-bold">마인크래프트</h5>
          <p>멀티버스세계에서 다양한 블록들을 활용하여 즐기는 멋진 세계에 오세요</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    </section>
    <section class="ftco-about img ftco-section ftco-no-pb" id="about-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 col-lg-5 d-flex">
    				<div class="img-about img d-flex align-items-stretch">
    					<div class="overlay"></div>
<<<<<<< HEAD
	    				<div class="img d-flex align-self-stretch align-items-center" style="background-image:url(${pageContext.request.contextPath}/resources/images/jwagyeom.jpg);">
=======
	    				<div class="img d-flex align-self-stretch align-items-center" style="background-image:url(../resources/images/jwagyeom.jpg);">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
	    				</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-7 pl-lg-5 pb-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<h1 class="big">About</h1>
		            <h2 class="mb-4">About Me</h2>
		            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
		            <ul class="about-info mt-4 px-md-0 px-2">
		            	<li class="d-flex"><span>Name:</span> <span>Kimgapryong</span></li>
		            	<li class="d-flex"><span>Date of birth:</span> <span>February 22, 2007</span></li>
		            	<li class="d-flex"><span>Address:</span> <span>San Francisco CA 97987 USA</span></li>
		            	<li class="d-flex"><span>Zip code:</span> <span>1000</span></li>
		            	<li class="d-flex"><span>Email:</span> <span>kimmujin@gmail.com</span></li>
		            	<li class="d-flex"><span>Phone: </span> <span>+1-2234-5678-9-0</span></li>
		            </ul>
		          </div>
		        </div>
	          <div class="counter-wrap ftco-animate d-flex mt-md-3">
              <div class="text">
              	<p class="mb-4">
	                <span class="number" data-number="120">0</span>
	                <span>Project complete</span>
                </p>
                <p><a href="#" class="btn btn-primary py-3 px-3">Download CV</a></p>
              </div>
	          </div>
	        </div>
        </div>
    	</div>    </section>

    <section class="ftco-section ftco-no-pb" id="resume-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
          	<h1 class="big big-2">Resume</h1>
            <h2 class="mb-4">Resume</h2>
            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-6">
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2014-2015</span>
    					<h2>Master Degree of Design</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2014-2015</span>
    					<h2>Bachelor's Degree of C.A</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2014-2015</span>
    					<h2>Diploma in Computer</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    			</div>

    			<div class="col-md-6">
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2014-2015</span>
    					<h2>Art &amp; Creative Director</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2014-2015</span>
    					<h2>Wordpress Developer</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    				<div class="resume-wrap ftco-animate">
    					<span class="date">2017-2018</span>
    					<h2>UI/UX Designer</h2>
    					<span class="position">Cambridge University</span>
    					<p class="mt-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
    				</div>
    			</div>
    		</div>
    		<div class="row justify-content-center mt-5">
    			<div class="col-md-6 text-center ftco-animate">
    				<p><a href="#" class="btn btn-primary py-4 px-5">Download CV</a></p>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section" id="services-section">
    	<div class="container">
    		<div class="row justify-content-center py-5 mt-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<h1 class="big big-2">Games</h1>
            <h2 class="mb-4">Games</h2>
            <p> Check out the different types of games you want</p>
          </div>
        </div>
    		<div class="row">
					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-analysis"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Action</h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-flasks"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Adventure </h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-ideas"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Role-playing Game</h3>
							</div>
						</a>
					</div>

					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-analysis"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Strategy </h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-flasks"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Simulation </h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center d-flex ftco-animate">
						<a href="#" class="services-1">
							<span class="icon">
								<i class="flaticon-ideas"></i>
							</span>
							<div class="desc">
								<h3 class="mb-5">Sports </h3>
							</div>
						</a>
					</div>
				</div>
    	</div>
    </section>

		
		<section class="ftco-section" id="skills-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<h1 class="big big-2">genre</h1>
            <h2 class="mb-4">Most popular genre</h2>
            <p>Check out the sites you enjoy the most</p>
          </div>
        </div>
				<div class="row">
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Action </h3>
							<div class="progress">
							 	<div class="progress-bar color-1" role="progressbar" aria-valuenow="90"
							  	aria-valuemin="0" aria-valuemax="100" style="width:90%">
							    <span>90%</span>
							  	</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Adventure </h3>
							<div class="progress">
							 	<div class="progress-bar color-2" role="progressbar" aria-valuenow="85"
							  	aria-valuemin="0" aria-valuemax="100" style="width:85%">
							    <span>85%</span>
							  	</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Role-playing Game</h3>
							<div class="progress">
							 	<div class="progress-bar color-3" role="progressbar" aria-valuenow="95"
							  	aria-valuemin="0" aria-valuemax="100" style="width:95%">
							    <span>95%</span>
							  	</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Strategy </h3>
							<div class="progress">
							 	<div class="progress-bar color-4" role="progressbar" aria-valuenow="90"
							  	aria-valuemin="0" aria-valuemax="100" style="width:90%">
							    <span>90%</span>
							  	</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Simulation </h3>
							<div class="progress">
							 	<div class="progress-bar color-5" role="progressbar" aria-valuenow="70"
							  	aria-valuemin="0" aria-valuemax="100" style="width:70%">
							    <span>70%</span>
							  	</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="progress-wrap ftco-animate">
							<h3>Sports </h3>
							<div class="progress">
							 	<div class="progress-bar color-6" role="progressbar" aria-valuenow="80"
							  	aria-valuemin="0" aria-valuemax="100" style="width:80%">
							    <span>80%</span>
							  	</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
 

     <section class="ftco-section ftco-project" id="projects-section">
  <div class="container">
    <div class="row justify-content-center pb-5">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <h1 class="big big-2">Download</h1>
        <h2 class="mb-4">Download Games</h2>
        <p>Download the game and play it</p>
      </div>
    </div>
    <div class="row">
      <%
<<<<<<< HEAD
    String sql = "select * from product";
    String selsql = "select * from gameList";

    rs = null;
    ResultSet rss = null;
    pstmt = null;
    PreparedStatement pre = null;

    // 먼저 product 테이블에서 데이터를 조회
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();

    // gameList 테이블에서 데이터를 조회
    pre = conn.prepareStatement(selsql);
    rss = pre.executeQuery();

    if (rs != null && rss != null) {
%>
=======
        String sql = "select * from product";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        if (rs != null) {
      %>
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
      <!-- Table start -->
      <table class="table table-bordered">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Product ID</th>
            <th scope="col">Game Name</th>
            <th scope="col">Description</th>
            <th scope="col">Program Name</th>
            <th scope="col">Likes</th>
            <th scope="col">Game Image</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
<<<<<<< HEAD
        <%

    Set<String> productIds = new HashSet<>();
    while (rss.next()) {
        productIds.add(rss.getString("productId"));
    }
%>
           <%
            while (rs.next()) {
                // gameList의 "check" 값을 먼저 확인하기

        %>
=======
          <%
            while (rs.next()) {
          %>
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
          <tr>
            <td class="text-center text-light"><%= rs.getString("pname") %></td>
            <td class="text-center text-light"><%= rs.getString("productId") %></td>
            <td class="text-center text-light"><%= rs.getString("p_description") %></td>
            <td class="text-center text-light"><%= rs.getString("programname") %></td>
            <td class="text-center text-light"><%= rs.getInt("quantity") %></td>
            <td style="height: 150px; vertical-align: middle;">
  <div class="text-center" style="position: relative; width: 100%; height: 100%;">
<<<<<<< HEAD
    <img src="${pageContext.request.contextPath}/resources/images/product/<%= rs.getString("filename") %>" alt="<%= rs.getString("pname") %>" class="img-fluid" style="max-height: 120px; width: auto;">
  </div>
</td>
            <td>
             <% 
             		if (productIds.contains(rs.getString("productId"))) {  // "check" 값이 1이면 "View" 버튼에 스타일을 변경
                %>
                    <a class="btn btn-success" href="./product.jsp?id=<%= rs.getString("productId") %>">go Game</a>
                <% 
                    } else {
                %>
                    <a class="btn btn-primary" href="./product.jsp?id=<%= rs.getString("productId") %>">View</a>
                <% 
                    }

                    if (edit.equals("update")) {
                %>
                    <a href="./editProduct.jsp?id=<%= rs.getString("productId") %>" class="btn btn-success">Edit</a>
                <% 
                    } else if (edit.equals("delete")) {
                %>
                    <span class="btn btn-danger" onclick="deleteConfirm('<%= rs.getString("productId") %>')">Delete</span>
                <% 
                    }
                %>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
      </table>
      <!-- Table end -->
     <%
    }
    if (rs != null) rs.close();
    if (rss != null) rss.close();
    if (pstmt != null) pstmt.close();
    if (pre != null) pre.close();
    if (conn != null) conn.close();
%>
=======
    <img src="../resources/images/product/<%= rs.getString("filename") %>" alt="<%= rs.getString("pname") %>" class="img-fluid" style="max-height: 120px; width: auto;">
  </div>
</td>
            <td>
              <a class="btn btn-primary" href="./product.jsp?id=<%= rs.getString("productId") %>">View</a>
              <%
                if (edit.equals("update")) {
              %>
                <a href="./editProduct.jsp?id=<%= rs.getString("productId") %>" class="btn btn-success">Edit</a>
              <%
                } else if (edit.equals("delete")) {
              %>
                <span class="btn btn-danger" onclick="deleteConfirm('<%= rs.getString("productId") %>')">Delete</span>
              <%
                }
              %>
            </td>
          </tr>
          <%
            }
          %>
        </tbody>
      </table>
      <!-- Table end -->
      <%
        }
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
      %>
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
    </div>
  </div>
</section>


    <section class="ftco-section" id="blog-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h1 class="big big-2">Blog</h1>
            <h2 class="mb-4">Our Blog</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
              	<div class="d-flex align-items-center mb-3 meta">
	                <p class="mb-0">
	                	<span class="mr-2">June 21, 2019</span>
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
                <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
              	<div class="d-flex align-items-center mb-3 meta">
	                <p class="mb-0">
	                	<span class="mr-2">June 21, 2019</span>
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
                <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text mt-3 float-right d-block">
              	<div class="d-flex align-items-center mb-3 meta">
	                <p class="mb-0">
	                	<span class="mr-2">June 21, 2019</span>
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
                <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter">
    	<div class="container">
				<div class="row d-md-flex align-items-center">
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="100">0</strong>
                <span>Awards</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="1200">0</strong>
                <span>Complete Projects</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="1200">0</strong>
                <span>Happy Customers</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="500">0</strong>
                <span>Cups of coffee</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<<<<<<< HEAD
    <section class="ftco-section ftco-hireme img margin-top" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg)">
=======
    <section class="ftco-section ftco-hireme img margin-top" style="background-image: url(../resources/images/bg_1.jpg)">
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-7 ftco-animate text-center">
						<h2>I'm <span>Available</span> for freelancing</h2>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
						<p class="mb-0"><a href="#" class="btn btn-primary py-3 px-5">Hire me</a></p>
					</div>
				</div>
			</div>
		</section>

    <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h1 class="big big-2">Contact</h1>
            <h2 class="mb-4">Contact Me</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>

        <div class="row d-flex contact-info mb-5">
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-map-signs"></span>
          		</div>
          		<h3 class="mb-4">Address</h3>
	            <p>198 West 21th Street, Suite 721 New York NY 10016</p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-phone2"></span>
          		</div>
          		<h3 class="mb-4">Contact Number</h3>
	            <p><a href="tel://1234567920">+ 1235 2355 98</a></p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-paper-plane"></span>
          		</div>
          		<h3 class="mb-4">Email Address</h3>
	            <p><a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-globe"></span>
          		</div>
          		<h3 class="mb-4">Website</h3>
	            <p><a href="#">yoursite.com</a></p>
	          </div>
          </div>
        </div>

        <div class="row no-gutters block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="#" class="bg-light p-4 p-md-5 contact-form">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="9" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
<<<<<<< HEAD
          	<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/about.jpg);"></div>
=======
          	<div class="img" style="background-image: url(../resources/images/about.jpg);"></div>
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
          </div>
        </div>
      </div>
    </section>
		

	<!-- footer include -->
    <%@ include file = "footer.jsp" %>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<<<<<<< HEAD
  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
=======
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
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
    
  </body>
</html>