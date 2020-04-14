<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="Coral - Onepage portfolio Template">
    <meta name="author" content="esrat">

    <!-- Fontawseom Icon CSS -->
     <link href="${pageContext.request.contextPath}/resources/assets/css/all.css" rel="stylesheet" />

    <!-- Theme CSS -->
             
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
      
      
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/responsive.css" rel="stylesheet" />
    
    <title>What is eat today?</title>

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body id="page-top">
   <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
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
                        <a class="nav-link js-scroll-trigger" href="#page-top">
                            HOME
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#feature">
                            BEST 맛집
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
		            <% if(session.getAttribute("userId")==null){ %>
						<a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/naverlogin">
							로그인
						</a>
						<% }else{ %>
						<a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/Logout">
						로그아웃
						</a>
					<% } %>
                    </li>
                    
                    <li class="nav-item ml">
                     <% if(session.getAttribute("userId")==null){ %>
						<a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/join">
							회원가입
						</a>
						<% }else{ %>						 
						<a class="nav-link js-scroll-trigger"><c:out value="${sessionScope.nickname}님"/></a>		
					<% } %>                                           
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
    </section>
<!-- header
    ================================================== -->
	<section class="section" id="feature" >
       <div class="container">
           <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>공지사항 수정</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5">
                        Notice Modify Page
                    </p>
                </div>
            </div>
            <!-- / .row -->

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form method="post" action = "${pageContext.request.contextPath}/noticeupdateresult">
                        <!-- form message -->
                        
                            <!-- end message -->
                        <input type = "hidden" name = "NoticeNo" id = "NoticeNo" value = "${dto.noticeNo}"><br>    
                        <div class="row">
                           
                               <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text" name="NoticeTitle" id="NoticeTitle" cols="30" rows="1" class="form-control"
                                    value = "${dto.noticeTitle}" accesskey=""required="required" placeholder="제목을 입력해주세요" >
                                </div>
                            </div>
                           
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <pre><textarea name="NoticeContent" id="NoticeContent" cols="30" rows="12" class="form-control" 
                                      accesskey=""required="required" placeholder="내용을 입력해주세요">${dto.noticeContent}</textarea></pre>
                                </div>
                            </div>
                            
                            
                            <div class="col-lg-12">
                                <div class="submit text-center">
                                
                                  <input name="reset" type="button" class="btn btn-danger btn-lg" value="취소"onClick="history.go(-1)">&nbsp;&nbsp;
                                    <input type="submit" class="btn btn-primary btn-lg" value="수정완료">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        <!-- / .container -->
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
    <script src="${pageContext.request.contextPath}/resources/libs/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/libs/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/ajax-contact.js"></script>
     
    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/js/theme.js"></script>
</body>
</html>