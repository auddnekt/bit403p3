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
     <link href="${pageContext.request.contextPath}/resources/css/all.css" rel="stylesheet" />

    <!-- Theme CSS -->
             
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
      
      
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" />
    
    <title>What is eat today?</title>

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btnWrite").click(function(){
			location.href="${path}/controller/noticeinsert";	
		});
	});
</script>

</head>
<body id="page-top">
   <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
     <div class="container">

            <!-- Brand -->
            <a class="navbar-brand js-scroll-trigger" href="index.html">
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
                        <a class="nav-link js-scroll-trigger" href="index.html">
                            HOME
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#">
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
        <div class="bg-cover" style="background-image: url(${pageContext.request.contextPath}/resources/img/pasta.jpg);"></div>

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
    
<section class="section" id="feature">
        <div class="container">
            <div class="row justify-content-center mb-6">
                <div class="col-md-10 col-lg-8 text-center">

                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>공지사항</b>
                    </h2>
                        
                    <!-- Subheading -->
                    <p class="mb-1">
                       What should We Eat Today? Notice
                    </p>
                    <div class="mb-4" align="right">
					<button type="button" id="btnWrite" class="btn btn-primary btn-lg">글작성</button>
					</div>
					
              	</div>
            </div>
          </div>
<c:forEach var="row" items="${dto}">

<div class="container" align="center">
                 <!--Accordion wrapper-->
<ul class="fnq">
        <li class="f_question1">
            <ul class="clearfix">
                <li></li>
                <li><h3><c:out value="${row.insertTime}"/></h3></li>
                <li><h1><c:out value="${row.noticeTitle}"/></h1></li>
                <li><i class="fa fa-angle-double-up"></i></li>
            </ul>
            <hr>
            <div class="f_q_link"></div>
        </li>
        <li class="f_answer1">
            <ul class="clearfix">
                <li></li>
                <center><li><c:out value="${row.noticeContent}"/></li></center>
                <p align="right">
                <a href ="${pageContext.request.contextPath }/noticeupdate/${row.noticeNo}">수정</a>
				<a href ="${pageContext.request.contextPath }/noticedelete/${row.noticeNo}">삭제</a>
				</p>
            </ul>
        </li>     
    </ul>
 		<!-- / .container -->
</div>
</c:forEach>
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
    
    <script>
    $(function(){
        var className =""  //변수를 선언한다.
          
         $('.f_q_link').on({    //버튼을
   
             click: function(){  //클릭했을때 
   
                  className=$(this).parent().next().attr('class').slice(-2); 
                  //보여줄 li의 class이름을 뒤에서 두자리(on)를 변수에 담는다.
   
                 if(className=='on'){  //만약 클래스명이 'on'이면
   
                     $(this).parent().next().removeClass('on'); //class'on' 삭제
   
                    $(this).prev().children().eq(3).children()
                    .css({transform:'rotate(0deg)',transition:'all 0.4s',color:'#000'});
                     //화살표 아이콘의 원래 css로 돌리기
                 }
                 else if(className!='on'){  //만약 클래스명이 'on'이 아니면
   
                     $(this).parent().next().addClass('on');  //class'on' 추가
   
                    $(this).prev().children().eq(3).children()
                   .css({transform:'rotate(180deg)',transition:'all 0.4s',color:'#7070ea'});  
                    // 화살표 아이콘 css 수정
                 }                 
              }             
          }); 
      });    
    </script>
</body>
</html>