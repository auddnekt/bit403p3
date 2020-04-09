<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/review.css">
    <title>What is eat today?</title>
    
    <style>
    	.control-label{
    		padding-top: 10px;
    	}
    
    	.form-control{
    		margin-bottom: 10px;
    	}
    </style>
</head>

<body id="page-top">
<jsp:include page="/header" ></jsp:include>
<%--     <!-- NAVBAR
    ================================================= -->
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
                        <b>리뷰 작성</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5" style="font-size: 20px;">
                        Review Creation Page
                    </p>
                </div>
            </div>
            <!-- / .row -->


            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form action="${pageContext.request.contextPath }/replyinsertresult" method="post" id="main_contact_form" class="contact_form">
                        <!-- form message -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                        Your message was sent successfully.
                                    </div>
                                </div>
                            </div>
                            <!-- end message -->
                            
                           	<input type = "hidden" name = 'StoreNo' id = 'StoreNo' value = "${no}">
                           	 
                           	<!-- <div class="form-group">
				                    <label for="StoreHours" class="col-lg-2 control-label">평점</label>
				                    <div class="col-lg-10">
				                        <input type="button" class="btn btn-primary btn-count" name="StoreHours" id="StoreHours" value="5점">
				                        <input type="button" class="btn btn-primary btn-count" name="StoreHours" id="StoreHours" value="4점">
				                        <input type="button" class="btn btn-primary btn-count" name="StoreHours" id="StoreHours" value="3점">
				                        <input type="button" class="btn btn-primary btn-count" name="StoreHours" id="StoreHours" value="2점">
				                        <input type="button" class="btn btn-primary btn-count" name="StoreHours" id="StoreHours" value="1점">
				                    </div>
				                </div> -->

                            <div class="form-group">
			                    <label for="UserNickName" class="col-lg-2 control-label">닉네임</label>
			                    <div class="col-lg-10">
			                        <input type="text" class="form-control" name="UserNickName" id="UserNickName" value = "${sessionScope.userNickName} " readonly >
			                    </div>
			                </div>
				            <div class="form-group">
				            
			                    <label for="StoreCount" class="col-lg-2 control-label">평점</label>
			                    <div class="col-lg-10">
			                        <select class="form-control" name="StoreCount" id="StoreCount">
			                            <option value=5>굉장히 맛있어요! 또 오고 싶을정도로 강추 합니다! "5점"</option>
			                            <option value=4>꽤 맛있습니다 입맛에 괜찮네요. 추천드립니다. "4점"</option>
			                            <option value=3>음 그저 그렇네요. 한번 올정도는 되는거 같습니다. "3점"</option>
			                            <option value=2>좀 별로네요. 다시 오기에는 생각을 좀 해봐야 되겠습니다. "2점"</option>
			                            <option value=1>너무 맛없습니다. 다시는 안오겠습니다 "1점"</option>
			                        </select>
			                    </div>
			                </div>    
	                        <div class="row">
	                            <div class="col-lg-12">
	                                <div class="form-group">
	                                    <textarea name="StoreReviewContent" name="StoreReviewContent" id="StoreReviewContent" cols="30" rows="12" class="form-control" placeholder="솔직한 리뷰를 입력해주세요~^^" accesskey=""required="required" ></textarea>
	                                </div>
	                            </div>
	                            
	                            
	                            <div class="col-sm-2 imgUp">
	                            <div class="imagePreview"></div>
	                            <label class="btn btn-primary">
	                            UPLOAD<input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
	                            </label>
	                            </div>
	                            <i class="fa fa-plus imgAdd"></i>
	                            <div class="col-lg-12">
	                                <div class="submit text-center">
	                                   <input name="submit" type="submit" class="btn btn-danger btn-lg" value="취소"></a>&nbsp;&nbsp;
	                                   <input name="submit" type="submit" class="btn btn-primary btn-lg" value="리뷰완료"></a>
	                                </div>
	                            </div>
	                        </div>
                        
                    </form>
                </div>
            </div>
        <!-- / .container -->
        </div>
    </section>
    <jsp:include page="/footer" ></jsp:include>
    <!-- FOOTER
    ================================================== -->
<!--     <footer class="top-padding bg-dark">
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
    <script src="${pageContext.request.contextPath}/resources/assets/libs/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/libs/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
     <script src="${pageContext.request.contextPath}/resources/assets/js/review.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/ajax-contact.js"></script>
     
    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/theme.js"></script>

</body>

</html>