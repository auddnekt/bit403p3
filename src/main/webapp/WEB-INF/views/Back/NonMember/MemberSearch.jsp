<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  -->
<head>
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
    
    <title>What is eat today?</title>
</head>

<body id="page-top">
   <jsp:include page= "/header" ></jsp:include>

    <!-- NAVBAR
    ================================================= -->
<%--     <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
        <div class="container">

            <!-- Brand -->
            <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/main">
                <font color=lightgray size=6><b>오늘</b></font>
                <font color=skyblue size=6><b>뭐</b></font>
                <font color=orange size=6><b>먹지?</b></font>
            </a>
            
            <!-- Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon-bar">
                    <i class="fa fa-bars"></i>
                </span>
            </button>

            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <!-- Links -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/main">
                            HOME
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/storesearch?currpage${page.startBlock }">
                            BEST 맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#">
                            오늘날씨 추천맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#">
                            회원추천 맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="notice.html">
                            공지사항
                        </a>
                    </li>

                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="login.html">
                            로그인
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="join.html">
                            회원가입
                        </a>
                    </li>
                </ul>
            </div>
            <!-- / .navbar-collapse -->
        </div>
        <!-- / .container -->
    </nav>

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
                              <div class="input-group">
                                  <input type="text" class="form-control"  placeholder="검색 키워드를 입력하세요!" >
                                  
                                  <span class="input-group-btn">
                                  </span>
                                  <button class="btn btn-primary">
                                        <font size=3><b>검색</b></font>
                                    </button>
                                </div>
                                
                        <!-- Heading -->
                        <!--<h1 class="text-white text-center mb-4 display-4 font-weight-bold">
                            I am a UI/UX Designer <br>& Developer
                        </h1>--!>

                        <!-- Subheading -->
                        <p class="lead text-white text-center mb-5">
                            
                        </p>

                        <!-- Button -->
                        <p class="text-center mb-0" >
                            <a href="#" target="_blank" class="btn btn-primary ">
                                <font size=4>Random 추천맛집</font>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- / .row -->
            
        </div>
        <!-- / .container -->
    </section> --%>

    <!-- SECTIONS
    ================================================== -->
    <!-- PAGES
    ================================================== -->

    <!-- FEATURES
    ================================================== -->
    <section class="section" id="feature" >
       <div class="container">
          <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>회원 추천 맛집 베스트</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5" style="font-size:20px;">
                       a list of recommended restaurants<br>
                        for members 
                    </p>
                </div>
            </div>
           <div class="row justify-content-center">
              <c:forEach var = "MemberBest" items = "${MemberBest }">
                <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                    <div class="portfolio-block">
                        <img src="${pageContext.request.contextPath}/${MemberBest.storeImg }" style = "width:350px; height: 200px;" alt="portfolio">

                        <div class="portfolio-content">
                          <div class="icon">
                           <i class="fas fa-eye">${MemberBest.storeHit }</i>&nbsp&nbsp
                           <i class="fas fa-star">${MemberBest.storeUp }</i>&nbsp&nbsp
                           <i class="fas fa-pen">${MemberBest.replyCount }</i>
                         </div>
                         <c:if test="${MemberBest.storeScore == null }">
                         	<p class="score">0.0</p>
                         </c:if>
                          <p class="score">${MemberBest.storeScore }</p>
                           <p class="work-cat">${MemberBest.storeName }</p>
                            
                        </div>
                        <div class="overlay-content">
                            <a href="${pageContext.request.contextPath }/memberdetail/${MemberBest.storeNo}?userid=${sessionScope.userId}"><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                </div>   
             </c:forEach>
                
 
            </div>
            <br>
            
            
            <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>회원 추천 맛집 리스트</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5" style="font-size:20px;">
                       a list of recommended restaurants<br>
                        for members 
                    </p>
                </div>
            </div>
           <div class="row justify-content-center">
              <c:forEach var = "Store" items = "${StoreSearch }">
                <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                    <div class="portfolio-block">
                        <img src="${pageContext.request.contextPath}/${Store.storeImg }" style = "width:350px; height: 200px;" alt="portfolio">

                        <div class="portfolio-content">
                          <div class="icon">
                           <i class="fas fa-eye">${Store.storeHit }</i>&nbsp&nbsp
                           <i class="fas fa-star">${Store.storeUp }</i>&nbsp&nbsp
                           <i class="fas fa-pen">${Store.replyCount }</i>
                         </div>
                         <c:if test="${Store.storeScore == null }">
                         	<p class="score">0.0</p>
                         </c:if>
                          <p class="score">${Store.storeScore }</p>
                           <p class="work-cat">${Store.storeName }</p>
                            
                        </div>
                        <div class="overlay-content">
                            <a href="${pageContext.request.contextPath }/memberdetail/${Store.storeNo}?userid=${sessionScope.userId}"><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                </div>   
             </c:forEach>
                
 
            </div>
            

       <nav aria-label="Page navigation">
         <ul class="pagination">
 		   <c:if test="${page.prev }">
			  <li><a href="membersearch?currpage=${page.startBlock-1 }&search=${search }&searchtxt=${searchtxt } "><span aria-hidden="true">«</span></a></li>
		   </c:if>
		<c:forEach var = "index" begin="${page.startBlock }" end="${page.endBlock }">
		   <c:if test = "${index  != page.currPage }">
			 <li><a href="membersearch?currpage=${index }&search=${search }&searchtxt=${searchtxt }">${index }</a></li>
		   </c:if>
		<c:if test = "${index  == page.currPage }">
			<li class="active"><a href="#"><c:out value = "${index }"/></a></li>
		</c:if>
		</c:forEach>	
			<c:if test="${page.next }">
				<li><a href="membersearch?currpage=${page.endBlock+1 }&search=${search }&searchtxt=${searchtxt } "><span aria-hidden="true">»</span></a></li>
			</c:if>
			<% if(session.getAttribute("userId")!=null){  %>
						<li style="margin-left:87%;"><a href="${pageContext.request.contextPath }/storeinsert?${sessionScope.userGrade}">작성</a></li>
			<% } %>
			
			
         </ul>
         
      </nav>
        	
        </div>
        
        
    </section>
    
    <!-- FOOTER
    ================================================== -->
    <footer class="top-padding bg-dark">
        <!--Content -->
        <div class="container">
            <div class="row align-self-center">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget">
                        <!-- Brand -->
                        <a href="#" class="footer-brand text-white">
                           <font color=lightgray size=6><b>오늘</b></font>
                            <font color=skyblue size=6><b>뭐</b></font>
                            <font color=orange size=6><b>먹지?</b></font>
                        </a>
                    </div>
                </div>

                <div class="col-lg-2 ml-lg-auto col-md-2">

                    <!-- Links -->
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

                    <!-- Links -->
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
                            <i class="fa fa-globe"></i> Kim HyunJin , Koo MyungWoo
                        </li>
                    </ul>
                </div>
            </div>
            <!-- / .row -->

            <div class="row justify-content-md-center footer-copy">
                <div class="col-lg-8 col-md-6 col-sm-6 text-center">
                    <p class="lead text-white-50">&copy; Copyright 
                     What should We Eat Today? Co.Ltd.All rights reserved. </p>
                </div>
            </div>
        </div>
        <!-- / .container -->
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