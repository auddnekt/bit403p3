<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%-- <%@ include file="../include/head.jsp"%> --%>
<head>
<meta charset="UTF-8">
<title>Join</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
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



<body id="page-top">
<jsp:include page="/header" ></jsp:include>
 <!-- NAVBAR
    ================================================= -->
    <%-- <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
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
    </section> --%>
    
<section class="section" id="feature" >
       <div class="container">
           <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>회원가입</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5">
                        This is the screen for Membership Registration.
                    </p>
                </div>
            </div>
            <!-- / .row -->

            <div class="row justify-content-center">
                      
               	<div class="col-lg-8">
                   <form id="signFrm" action="joinresult">
                         <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userName" id="userName" class="form-control" placeholder="이름을 입력해주세요.">
                                	<span id="icon" class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userId" id="userId" class="form-control" placeholder="아이디를 입력해주세요." required="required">                  
                                	<span id="icon" class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>
                                	<button type="button" id="check" class="btn btn-primary btn-lg">ID중복검사</button>
                                	<div id="idCheck"></div>                     
                                </div>
                            </div>
                        </div>  
                   
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="password" name="userPw" id="userPw" class="form-control" placeholder="비밀번호를 입력해주세요." required="required"   autocomplete="off">
                                	<span id="icon" class="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="password"  autocomplete="off" id="passwdCheck" name="passwdCheck" class="form-control" placeholder="비밀번호를 다시 입력해주세요." required="required">
                                	<span id="icon" class="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                            </div>
                       </div>
                        <div class="row">     
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userEmail"  class="form-control" placeholder="E-mail을 입력해주세요." required="required"  autocomplete="off">
                                  
					        	</div>
                                	<span id="icon" class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </div>
                      
                            
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userNickname" class="form-control" placeholder="닉네임을 입력해주세요." required="required">
                                    <span id="icon" class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>
                            <br>
                            </div>
                       </div>
                       
                            <div class="col-lg-12">
                                <div class="submit text-center">
                                   <a href="${pageContext.request.contextPath}/Main"><input name="reset" type="submit" class="btn btn-danger btn-lg" value="취소"></a>&nbsp;&nbsp;
                                    <input type="button" id="signUp" class="btn btn-primary btn-lg" value="회원가입 완료">
                                    <p class="pt-3">회원가입을 하려면 위 버튼을 눌러주세요.</p>
                                </div>
                            </div>
                             <a href="${pageContext.request.contextPath}/login" class="text-center" >로그인</a>
                         </form>
                       </div>
                   </div>
                </div>
        <!-- / .container -->
        
    </section>
    <jsp:include page="/footer" ></jsp:include>
     <!-- FOOTER
     
    ================================================== -->
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
                            <i class="fa fa-globe"></i> Kim HyunJin , Koo MyungWoo
                        </li>
                    </ul>
                </div>
            </div>
            / .row

            <div class="row justify-content-md-center footer-copy">
                <div class="col-lg-8 col-md-6 col-sm-6 text-center">
                    <p class="lead text-white-50">&copy; Copyright 
                     What should We Eat Today? Co.Ltd.All rights reserved. </p>
                </div>
            </div>
        </div>
        / .container
    </footer> -->

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
    
    
<script type="text/javascript">
	$(document).ready(function(e){
		
		var idx = false;
		
		$('#signUp').click(function(){
			if($.trim($('#userId').val()) == ''){
				alert("아이디를 입력해주세요.");
				$('#userId').focus();
				return;
			}else if($.trim($('#userPw').val()) == ''){
				alert("패스워드를 입력해주세요.");
				$('#userPw').focus();
				return;
			}
			//패스워드 확인
			else if($('#userPw').val() != $('#passwdCheck').val()){
				alert('패스워드가 다릅니다.');
				$('#userPw').focus();
				return;
			}
			
			if(idx==false){
				alert("아이디 중복체크를 해주세요.");
				return;
			}else{
				$('#signFrm').submit();
			}
		});
		
		$('#check').click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath}/idCheck",
				type: "GET",
				data:{
					"userId":$('#userId').val()
				},
				success: function(data){
					if(data == 0 && $.trim($('#userId').val()) != '' ){
						idx=true;
						$('#userId').attr("readonly",true);
						var html="<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
						$('#idCheck').empty();
						$('#idCheck').append(html);
					}else{

						var html="<tr><td colspan='3' style='color: red'>사용불가능한 아이디 입니다.</td></tr>";
						$('#idCheck').empty();
						$('#idCheck').append(html);
					}
				},
				error: function(){
					alert("서버에러");
				}
			});
		});
	});
</script>
</body>
</html>