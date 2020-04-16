<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--
메인 필요부분
모달창 수정

  -->


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="Coral - Onepage portfolio Template">
    <meta name="author" content="esrat">

    <!-- Fontawseom Icon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/all.css">

    <!-- Theme CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">

    <title>Coral-Onepage Portfolio Template</title>
    
    <!-- jQuery Modal -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	<script>
	$(document).ready(function(){
		
		/* $('#btn').on("click", function(){
			window.open("${pageContext.request.contextPath}/popup", "fullscreen=no, width=700, height=500").focus();
		});
		
		
		$(function(){
			$("#btn-open-dialog,#dialog-background,#-close-dialog").click(function () {
				$("#my-dialog1, #dialog-background").toggle();
			});
			$("#btn2").click(function () {
				$("#my-dialog1").toggle();
				$("#my-dialog2").load("${pageContext.request.contextPath}/membersearch");
				})
			});
			$("#dialog-background").click(function () {
				$("#my-dialog2").toggle();
			}); */
	});

</script>
<style>
	.active{
		position: relative;
	}
	.carousel-text{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate( -50%, -50% );
		font-size: 200%;
		font-weight: bolder;
		color : white;
	}
	.carousel-img{
		opacity: 0.8;
	}
	
	.linking{
		color: black;
		font-weight: bolder;
	}
	.linking:hover {
		color: black;
		text-decoration: none;
	}
	
	.container p{
		font-weight: bolder;
	}
	.display-5 a:hover{
		text-decoration: none;
	}
	
	@media screen and (max-width: 768px) {
	 
	 .carousel-text{
	 	font-size: 100%;
	 } 
	
	}
</style>
</head>

<body id="page-top">

<%-- <c:out value = "${sessionScope.userId} "/> --%>

   <!-- NAVBAR
    ================================================= -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
        <div class="container">

            <!-- Brand -->
            <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/main">
                <font color=lightgray size=6><b>오늘</b></font>
                <font color=skyblue size=6><b>뭐</b></font>
                <font color=orange size=6><b>먹지?</b></font>
            </a>
            
            <!-- Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="true" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon-bar">
                    <i class="fa fa-bars"></i>
                </span>
            </button>

            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <!-- Links -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#page-top">
                        HOME
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#feature">
                        BEST맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#about">
                            오늘날씨 추천맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#portfolio">
                            회원추천 맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/noticelist">
                            공지사항
                        </a>
                    </li>

                    <li class="nav-item ml">
                       <% if(session.getAttribute("userId")==null){  %>
			                  <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/naverlogin">
			                     로그인
			                  </a>
			                  <% }else{ %>
			                  <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/Logout">로그아웃
			                  </a>
			               <% } %>               
			                    </li>
			                    <li class="nav-item ml">
			                         <% if(session.getAttribute("userId")==null){ %>
			                  <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/join">
			                     회원가입
			                  </a>
			                  <% }else if(session.getAttribute("nickname")!=null){ %>                   
			                  <a class="nav-link js-scroll-trigger"><c:out value="${sessionScope.nickname}님"/></a>
			                  
			                  <% }else if(session.getAttribute("userNickName")!=null){ %>                   
			                  <a class="nav-link js-scroll-trigger"><c:out value="${sessionScope.userNickName}님"/></a>      
			               <% } %>   
                    </li>
                </ul>
            </div>
            <!-- / .navbar-collapse -->
        </div>
        <!-- / .container -->
    </nav>
	<%-- <jsp:include page="/header" ></jsp:include> --%>
    <!-- HERO
    ================================================== -->
    <section class="section section-top section-full">

        <!-- Cover -->
        <div class="bg-cover" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/pasta.jpg);"></div>

        <!-- Overlay -->
        <div class="bg-overlay"></div>
        
        <!-- Content -->
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-10 col-lg-8 " align="center">
                    <div class="banner-content" >
                        <!-- Preheading -->
                            <form method="post" action="storesearch?currpage${page.startBlock }">
                              	<div class="input-group">
                                  <input type="text" class="form-control" name = "searchtxt" placeholder="검색 키워드를 입력하세요!" >
                                  
                                  <span class="input-group-btn">
                                  </span>
                                  <button type = "submit" class="btn btn-primary">
                                        <font size=3><b>검색</b></font>
                                  </button>
                                  <input type = "hidden" name = "search" value="" style="margin-top:-50px;">
                                </div>
                             </form>  
                                <%-- <form method="post" action="storesearch?currpage${page.startBlock }">
									<input type = "text" class="form-control" name = "searchtxt">
									<span class="input-group-">
                                    </span>
									<input type = "submit" value = "검색">
									<input type = "hidden" name = "search" value="">
								</form><br> --%>
                            </div>
                                
                        <!-- Heading -->
                        <!--<h1 class="text-white text-center mb-4 display-4 font-weight-bold">
                            I am a UI/UX Designer <br>& Developer
                        </h1>--!>

                        <!-- Subheading -->
                        <!-- <p class="lead text-white text-center mb-5">
                            
                        </p> -->
                        <!-- Button -->
                        <p class="text-center mb-0" >
                            <a href="${pageContext.request.contextPath}/randomreco" rel="modal:open" target="_blank" class="btn btn-primary ">
                                <font size=4>Random 추천맛집</font>
                            </a>
                        </p>
                    </div>
                </div>
                <!-- / .row -->
            </div>
        	<!-- / .container -->    
            
        <!-- </div> -->
        
    </section>

    <!-- SECTIONS
    ================================================== -->
    <!-- PAGES
    ================================================== -->

    <!-- FEATURES
    ================================================== -->
    <section class="section" id="feature">
        <div class="container">
            <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-6 text-center">

                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>BEST 맛집</b>
                    </h2> 
                    <!-- Subheading -->
                    <p class="mb-1" style="font-size:20px;">
                      The Best Restaurants.
                    </p>
                </div>
            </div>
            <!-- / .row -->
                <div class="container" align="center">
             <b></b><p align="right"><a class = linking href="${pageContext.request.contextPath}/storesearch?currpage${page.startBlock }">BEST맛집 더보기</a></p>
             
              <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 70%;">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
               
                <div class="carousel-inner" role="listbox">
                  <div class="item active">
                    <a href="${pageContext.request.contextPath }/memberdetail/${MainBestSearch[0].storeNo }?userid=${sessionScope.userId}">
                    <img class = "carousel-img" src="${pageContext.request.contextPath}/${MainBestSearch[0].storeImg}"  
                    alt="pizza" style="width:100%;">
                    <div class = "carousel-text">
	                    <p>${MainBestSearch[0].storeName}</p>
	                    <p>${MainBestSearch[0].storeAddr}</p>
                    </div>
                    </a>
                  </div>

                  <div class="item" align="center">
                    <a href="${pageContext.request.contextPath }/memberdetail/${MainBestSearch[1].storeNo }?userid=${sessionScope.userId}">
                    <img class = "carousel-img" src="${pageContext.request.contextPath}/${MainBestSearch[1].storeImg}"
                      alt="nuddle" style="width:100%">
                      <div class = "carousel-text">
	                    <p>${MainBestSearch[1].storeName}</p>
	                    <p>${MainBestSearch[1].storeAddr}</p>
                    </div>
                      </a>
                  </div>

                  <div class="item" align="center">
                    <a href="${pageContext.request.contextPath }/memberdetail/${MainBestSearch[2].storeNo }?userid=${sessionScope.userId}">
                    <img class = "carousel-img" src="${pageContext.request.contextPath}/${MainBestSearch[2].storeImg}"
                   alt="pasta" style="width:100%">
                   <div class = "carousel-text">
	                    <p>${MainBestSearch[2].storeName}</p>
	                    <p>${MainBestSearch[2].storeAddr}</p>
                    </div>
                   </a>
                  </div>
                  
                  <div class="item" align="center">
                    <a href="${pageContext.request.contextPath }/memberdetail/${MainBestSearch[3].storeNo }?userid=${sessionScope.userId}">
                    <img class = "carousel-img" src="${pageContext.request.contextPath}/${MainBestSearch[3].storeImg}"
                   alt="koreansoup" style="width:100%">
                   <div class = "carousel-text">
	                    <p>${MainBestSearch[3].storeName}</p>
	                    <p>${MainBestSearch[3].storeAddr}</p>
                    </div>
                   </a>
                  </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>            
        <!-- / .container -->
        </div>
    </section>


    <!-- ABOUT
    ================================================== -->
    <hr class="line">   
     <section class="section bg-light" id="about">
        <!-- Heading -->
        <div>
                    <h2 class="lg-title mb-2" align="center">
                        <b>${weather}날씨 추천맛집</b>
                    </h2>
                    <p class="mb-5" align="center" style="font-size:20px;">
                    Today's Weather Recommended Restaurants
                    </p>
         </div>
                   <div class="container">
                       <p align="right"><a class = linking href="${pageContext.request.contextPath }/weathersearch?searchtxt=${weather }">${weather}날씨 추천맛집 더보기</a></p>
                    </div>
        <div class="container">
            <div class="row ">
                <div class="col-lg-6">
                    <div class="about-img">
                        <img src="${pageContext.request.contextPath}/${WeatherBestSearch[0].storeImg }" style = "width:500px; ; height: 350px;" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6 ">
                    <br>
                       <div class="about-content">
                        <div align="right">
                          <i class="fas fa-eye">${WeatherBestSearch[0].storeHit }</i>&nbsp&nbsp
                           <i class="fas fa-star">${WeatherBestSearch[0].storeUp }</i>&nbsp&nbsp
                           <i class="fas fa-pen">${WeatherBestSearch[0].replyCount }</i>
                        </div>
                         <h2 class="display-5">
                          <a class = "weathername" href="${pageContext.request.contextPath }/memberdetail/${WeatherBestSearch[0].storeNo }?userid=${sessionScope.userId}">
                          ${WeatherBestSearch[0].storeName }</a>
                          <c:if test="${WeatherBestSearch[0].storeScore == null }">
                         	<p class="score" style = "font-weight: 700;">0.0</p>
                         </c:if>
                         <p class="score" style = "font-weight: 700;">${WeatherBestSearch[0].storeScore }</p>
                        </h2>
                           
                        <p>
                        	<p>주소 : ${WeatherBestSearch[0].storeAddr }</p>
                        	<p>대표메뉴 : ${WeatherBestSearch[0].storeFood }</p>
                        	<p>영업시간 : ${WeatherBestSearch[0].storeHours }</p>
                        	<p>휴일 : ${WeatherBestSearch[0].storeClose }</p>
                        	<p>가격대 : ${WeatherBestSearch[0].storeCost }</p>
                        	<p>전화번호 : ${WeatherBestSearch[0].storeCall }</p>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row mt-5 align-items-center ">
                <div class="col-lg-6 col-md-6">
                    <div class="about-content-2">
                        <div align="right">
                          <i class="fas fa-eye">${WeatherBestSearch[1].storeHit }</i>&nbsp&nbsp
                           <i class="fas fa-star">${WeatherBestSearch[1].storeUp }</i>&nbsp&nbsp
                           <i class="fas fa-pen">${WeatherBestSearch[1].replyCount }</i>
                        </div>
                        <h2 class="display-5">
                            <a href="${pageContext.request.contextPath }/memberdetail/${WeatherBestSearch[1].storeNo }?userid=${sessionScope.userId}">${WeatherBestSearch[1].storeName }</a>
                         <c:if test="${WeatherBestSearch[1].storeScore == null }">
                         	<p class="score" style = "font-weight: 700;">0.0</p>
                         </c:if>
                         <p class="score" style = "font-weight: 700;">${WeatherBestSearch[1].storeScore }</p>
                        </h2>
                      
                        <p>주소 : ${WeatherBestSearch[1].storeAddr }</p>
                        <p>대표메뉴 : ${WeatherBestSearch[1].storeFood }</p>
                        <p>영업시간 : ${WeatherBestSearch[1].storeHours }</p>
                        <p>휴일 : ${WeatherBestSearch[1].storeClose }</p>
                        <p>가격대 : ${WeatherBestSearch[0].storeCost }</p>
                        <p>전화번호 : ${WeatherBestSearch[0].storeCall }</p>
                   		
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="about-img">
                        <img src="${pageContext.request.contextPath}/${WeatherBestSearch[1].storeImg }" style = "width:500px; ; height: 350px;" alt="pizza" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>
	<hr class="line">
    <!-- 회원추천 맛집
    ================================================== -->
    <section class="section bg-light" id="portfolio">
        <div class="container"> 
           
            <div class="row justify-content-center mb-3">
               
                <div class="col-md-8 col-lg-12 text-center">
                    
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                       <b>회원추천 맛집</b>
                    </h2>

                    <!-- Subheading -->
                    <p class="mb-4" style="font-size:20px;">
                        Good Restaurants To Recommendable Restaurants
                    </p>
                   <p align="right">
                   <a class = linking href="${pageContext.request.contextPath}/membersearch">회원추천 맛집 더보기</a>
                   </p>
                </div>
                
            </div>
            <!-- / .row -->

            <div class="row justify-content-center">
            <c:forEach var = "Member" items="${MemberBestSearch }">
                <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                    <div class="portfolio-block">
                        <img src="${pageContext.request.contextPath}/${Member.storeImg }" style = "width:350px; height: 200px; alt="portfolio">

                        <div class="icon">
                           <i class="fas fa-eye">${Member.storeHit }</i>&nbsp&nbsp
                           <i class="fas fa-star">${Member.storeUp }</i>&nbsp&nbsp
                           <i class="fas fa-pen">${Member.replyCount }</i>
                         <c:if test="${Member.storeScore == null }">
                         	<p class="score">0.0</p>
                         </c:if>
                         	<p class="score">${Member.storeScore }</p>
                            <span class="work-cat">${Member.storeName }</span>
                        </div>
                        <div class="overlay-content">
                            <a href="${pageContext.request.contextPath }/memberdetail/${Member.storeNo}?userid=${sessionScope.userId}"><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
    </section>


    

    

    <!-- Pricing
    ================================================== -->
    <!--<section class="section" id="pricing">
        <div class="container">
            <div class="row mb-4">
                <div class="col-md-6 col-lg-4 ">

                     Heading 
                    <h2 class="lg-title mb-2 ">
                        Affordable Pricing Plan
                    </h2>

                     Subheading 
                    <p class="my-4 ">
                        No Need to worry about pricing plan. You may have your own custom pricing plan .
                    </p>

                    <a href="#contact" class=" btn-primary">Contact Now</a>
                    <p class="text-primary mt-3">*Pricing plan may vary to work load</p>
                </div>

                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="pricing-block">
                        <h2>Basic plan</h2>

                        <h3 class="price my-3 ">
                            120 <small>$</small>
                        </h3>

                        <ul class="list-unstyled">
                            <li>PSD to html</li>
                            <li>1 onepage</li>
                            <li>Clean design</li>
                            <li>1 Revision</li>
                            <li>Well Documented</li>
                        </ul>

                        <a href="#" class="btn btn-outline-dark">Purchase now</a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="pricing-block">
                        <h2>Standard plan</h2>

                        <h3 class="price my-3 ">
                            320 <small>$</small>
                        </h3>

                        <ul class="list-unstyled">
                            <li>PSD to html</li>
                            <li>3 onepage</li>
                            <li>Clean design</li>
                            <li>Well Documented</li>
                            <li>4 Revision</li>
                            <li>Ultimate support</li>
                        </ul>

                        <a href="#" class="btn btn-outline-dark">Purchase now</a>
                    </div>
                </div>
            </div>
             / .row 
        </div>
    </section>-->

	<hr class="line">
	<br><br><br>
    <!-- Testimonial
    ================================================== -->
    <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-7 text-center">

                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>최신 리뷰</b>
                    </h2>

                    <!-- Subheading -->
                    <p class="mb-5">
                        What should We Eat Today? New Comments
                    </p>
                </div>
            </div>
    <section class="section bg-secondary" id="testimonial" >
            <div class="carousel slide" id="review-slider" data-ride="carousel">
              
               <ol class="carousel-indicators">
                <li data-target="#review-slider" data-slide-to="0" class="active"></li>
                <li data-target="#review-slider" data-slide-to="1"></li>
                <li data-target="#review-slider" data-slide-to="2"></li>
              </ol>
                          
               <div class="caousel-inner">
                   <div class="container">
                         <div class="row">
                           <div class="col-lg-8 m-auto">
                            <div class="carousel-item active text-center test-content">
                                <div class="client-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/review/tes-1.jpg" alt="" class="img-fluid ">
                                </div>

                                <p class="lead" Style = "font-size: 20px;">${ReviewList[0].storeReviewContent }</p>

                                <div class="client-text">
                                	<h3>가게 이름 : ${ReviewList[0].storeName }</h3>
                                	<br>
                                    <h3>${ReviewList[0].userNickName }</h3>
                                    <h5>${ReviewList[0].storeReviewDate }</h6>
                                </div>
                            </div>

                             <div class="carousel-item text-center test-content">
                                <div class="client-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/review/tes-2.jpg" alt="" class="img-fluid ">
                                </div>

                                <p class="lead" Style = "font-size: 20px;">${ReviewList[1].storeReviewContent }</p>

                                <div class="client-text">
                                	<h3>가게 이름 : ${ReviewList[1].storeName }</h3>
                                	<br>
                                    <h3>${ReviewList[1].userNickName }</h3>
                                    <h6>${ReviewList[1].storeReviewDate }</h6>
                                </div>
                            </div>

                              <div class="carousel-item text-center test-content">

                                <div class="client-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/review/tes-3.jpg" alt="" class="img-fluid ">
                                </div>

                                <p class="lead" Style = "font-size: 20px;">${ReviewList[2].storeReviewContent }</p>

                                <div class="client-text">
                                	<h3>가게 이름 : ${ReviewList[2].storeName }</h3>
                                	<br>
                                    <h3>${ReviewList[2].userNickName }</h3>
                                    <h6>${ReviewList[2].storeReviewDate }</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Contact
    ================================================== -->
    <section class="section" id="contact">
        <div class="container">
           
        </div>
    </section>


    <!-- FOOTER
    ================================================== -->
    <jsp:include page="/footer" ></jsp:include>
    
   <!--  <footer class="top-padding bg-dark">
        Content
        <div class="container">
            <div class="row align-self-center">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget">
                        Brand
                        <a href="#" class="footer-brand text-white">
                           <font color=lightgray size=6><b>오늘</b></font>
                            <font color=skyblue size=6><b>뭐</b></font>
                            <font color=orange size=6><b>먹지?</b></font>
                        </a>
                    </div>
                </div>

                <div class="col-lg-2 ml-lg-auto col-md-2">

                    Links
                    <ul class="footer-link list-unstyled ml-0 justify-content-end">
                        <li>
                            <a href="#" class="text-white">
                                Services
                            </a>
                        </li>
                        <li>
                            <a href="#" class="text-white">
                                Address
                            </a>
                        </li>
                        <li>
                            <a href="#" class="text-white">
                                Creator
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-5">

                    Links
                    <ul class="footer-link list-unstyled ml-0 justify-content-end">
                        <li>
                            <i class="fa fa-mobile"></i> 
                            02-1234-5678
                        </li>
                        <li>
                            <i class="fa fa-location-arrow"></i>
                            서울 서초구 강남대로 459
                        </li>
                        <li>
                            <i class="fa fa-globe"></i> Kim HyunJin , Goo MyungWoo
                        </li>
                    </ul>
                </div>
            </div>
            / .row

            <div class="row justify-content-md-center footer-copy">
                <div class="col-lg-8 col-md-6 col-sm-6 text-center">
                    <p class="lead2 text-white-50">&copy; Copyright 
                     What should We Eat Today? Co.Ltd.All rights reserved. </p>
                </div>
            </div>
        </div>
        / .container -->
    </footer>

    <!-- JAVASCRIPT
    ================================================== -->
    <!-- Global JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/libs/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/libs/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/ajax-contact.js"></script>

    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/theme.js"></script>

</body>

</html>