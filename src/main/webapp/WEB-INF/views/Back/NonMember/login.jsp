<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
    <meta charset="utf-8">
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
    
  
</head>
<jsp:include page="/header"/>
<body id="page-top">
   <%-- <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
     <div class="container">

            <!-- Brand -->
            <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/main/">
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
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/main/">
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
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/noticelist/">
                            공지사항
                        </a>
                    </li>

                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/naverlogin/">
                            로그인
                        </a>
                    </li>
                    <li class="nav-item ml">
                        <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/join/">
                            회원가입
                        </a>
                    </li>
                </ul>
            </div>
            <!-- / .navbar-collapse -->
        </div>
        <!-- / .container -->
    </nav> --%>

    <!-- HERO
    ================================================== -->
    <%-- <section class="section section-top section-full">

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
   
   <section class="section" id="login">
        <div class="container">
              <div class="row justify-content-center mb-4">
                   <div class="col-md-8 col-lg-8 text-center">
                       <!-- Heading -->
                       <h2 class="lg-title mb-2">
                           <b>로그인</b>
                       </h2>
                       <!-- Subheading -->
                       <p class="mb-5">
                          Member Login Page
                       </p>
                   </div>
               </div>
               
             <div class="login-form">
                          
             <form class="loginresultForm" id="loginresultForm" action="loginresult">
                 <div class="form-group">
                    <div class="input-group">
                         <span class="input-group-addon"><i class="fa fa-user"></i></span>
                         <input type="text" class="form-control" name="userId" placeholder="아이디를 입력해주세요." required="required" autofocus onkeyup="enterKeyCheck()">            
                     </div>
                 </div>
               <div class="form-group">
                     <div class="input-group">
                         <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                         <input type="password" class="form-control" name="userPw" placeholder="비밀번호를 입력해주세요." required="required" onkeyup="enterKeyCheck()">            
                     </div>
                 </div>        
                 <div class="form-group">
                     <button type="submit" class="btn btn-primary login-btn btn-block" >로그인</button>
                 </div>
                 
                <!-- 비밀번호저장, 비밀번호찾기 -->
                <!-- <div class="clearfix">
                     <a href="#"><label class="pull-left checkbox-inline">비밀번호를 잊으셨나요?</label></a>
                 </div> -->
                 
               <div class="or-seperator"><i>or</i></div>
                 <p class="text-center">소셜 미디어 계정으로 로그인</p>
                 <div class="text-center social-btn" id="naver_id_login">
                     <!-- <a href="#" class="btn btn-warning"><i class="fab fa-korvue"></i>&nbsp; KAKAO</a> -->
                     <a href="${url}" class="btn btn-success"><i class="fab fa-neos"></i>&nbsp; NAVER</a>
                  <!--<a href="#" class="btn btn-danger"><i class="fab fa-google"></i>&nbsp; Google</a>-->
                 </div>
                 <br>
                 <p class="text-center text-muted small">아직 계정이 없으신가요?
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type="button" value="회원가입" onclick="location.href='${pageContext.request.contextPath}/join'" class="joinbtn">
             </form><br>
         </div>
        <!-- / .container -->
        </div>
    </section>
    <!-- FOOTER
    ================================================== -->
     <jsp:include page="/footer" ></jsp:include>
     

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
    
    <script>
       var msg="${msg}";
       if (msg=== "registered"){
          alert("회원가입이 완료되었습니다. 로그인해주세요~");
       }else if (msg == "faulure"){
          alert("아이디와 비밀번호를 확인해주세요.");
       }
    </script>
    
</body>
</html>