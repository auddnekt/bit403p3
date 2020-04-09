<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
		
		$('#btn').on("click", function(){
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
			});
	});

</script>
<style>
	.item_no1{
		position: absolute;
	    top : 50%;
	    left: 50%;
	    transform : translate(-50%, -50%);
	    color: white;
	    font-weight: bolder;
	    font-size:300%;
	}
	
	.item_no1:hover {
		color: white;
		text-decoration: none;
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
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/storesearch">
                            BEST 맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="#about">
                            오늘날씨 추천맛집
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/membersearch">
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
						<a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/login">
							로그인
						</a>
						<% }else{ %>
						<a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/Logout">로그아웃
						</a>
					<% } %>	
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
                        <p class="lead text-white text-center mb-5">
                            
                        </p>

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