<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<!-- 추천 비동기처리하기
	리플 모달창 조작
	지도 api 적용
	삭제버튼
 -->
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
    
    <title>What is eat today?</title>
    
    <!-- jQuery Modal -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    
</head>
<script>
	$(document).ready(function(){
		$(".fa-star").on("click", function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/storeup/${dto.storeNo}",
				type:"get",
				data : {
					no:${dto.storeNo}
					/* ,id:'${id}' = session*/
				},
				success : function(){
					var up =${dto.storeUp};
					up=up+1;
					/* location.href = "${pageContext.request.contextPath}/memberdetail/${dto.storeNo}" */
					alert("추천완료");
				},
			})
		})
		

	});
</script>

<body id="page-top">

    <!-- NAVBAR
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
                <div class="col-md-10 col-lg-8" align="center">
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

    <!-- SECTIONS
    ================================================== -->
    <!-- PAGES
    ================================================== -->

    <!-- FEATURES
    ================================================== -->
    <section class="section" id="feature" >
         <div class="detailicon">
         <a href="${pageContext.request.contextPath }/replyinsert/${dto.storeNo}" class="write">
          <i class="fas fa-pen">리뷰작성</i>
        </a>
         <a href="#" class="recomend">
          <i class="far fa-star">추천</i>
        </a>
        </div>
        <hr>
        <div class="container">
         
          <div class="col-md-12">
           <div class="col-lg-7">
                    <div class="foodimg">
                        <img src="${pageContext.request.contextPath}/resources/assets/img/pasta.jpg" alt="pasta">
                    </div>  
            </div>      
        <!-- / .container -->
      
        <div class="icon">
                           <i class="fas fa-eye">${dto.storeHit}</i>&nbsp&nbsp
                           <i class="fas fa-star">${dto.storeUp}</i>&nbsp&nbsp
                           <i class="fas fa-pen">${ReplyCount }</i>
                         </div>
                          <p class="detailscore">${dto.storeScore}</p>
                           <p class="detailstore">${dto.storeName}</p>
                           
                             <p class="detailcontent">주소 : ${dto.storeAddr}</p>
                             <p class="detailcontent">전화번호 : ${dto.storeCall }</p>
                             <p class="detailcontent">대표메뉴 : ${dto.storeFood}</p>
                             <p class="detailcontent">영업시간 : ${dto.storeHours}</p>
                             <p class="detailcontent">가격대 : ${dto.storeCost}</p>
                             <p class="detailcontent">주차유무 : ${dto.storeParking}</p>
                             <p class="detailcontent">쉬는시간 : ${dto.storeBTime}</p>
                             <p class="detailcontent">휴일 : ${dto.storeClose }</p>                         
           </div>

		   
			 <nav style="clear:both" aria-label="Page navigation">
            
            <ul class="pagination">
                       <!-- 현재 페이지 -->
            <li><a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}">수정</a></li>
            <li><a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a></li>
           
            </ul>
            </nav>
		       
        </div>
        
        
        <br><hr><br>
        <div class="container">
        <div class="col-md-12" align="center">
        <h2 class="lg-title mb-2">
                        <b>가게위치</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5" style="font-size:20px;">
                        Store Location
                    </p>
        <!-- * 카카오맵 - 지도퍼가기 -->
        <!-- 1. 지도 노드 -->
        <div id="daumRoughmapContainer1585030517334" class="root_daum_roughmap root_daum_roughmap_landing" align="center"></div>

        <!--
            2. 설치 스크립트
            * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
        -->
        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

        <!-- 3. 실행 스크립트 -->
        <script charset="UTF-8">
            new daum.roughmap.Lander({
                "timestamp" : "1585030517334",
                "key" : "xnai",
                "mapWidth" : "800",
                "mapHeight" : "360"
            }).render();
        </script>
            </div>
        </div>
        
        <section class="RestaurantReviewList">
            <header class="RestaurantReviewList__Header">
              <h2 class="RestaurantReviewList__Title">
                <span class="RestaurantReviewList__RestaurantName">${dto.storeName }</span><span class="RestaurantReviewList__RestaurantNameSuffixDesktop">리뷰</span><span class="RestaurantReviewList__RestaurantNameSuffixMobile">음식점의 리뷰</span>
              <span class="RestaurantReviewList__AllCount">(${ReplyCount }개의 리플)</span></h2>

              
            </header>

            <ul class="RestaurantReviewList__ReviewList">
			<c:forEach var = "reply" items = "${reply }">
            <li class="RestaurantReviewItem RestaurantReviewList__ReviewItem">
		   <a class="RestaurantReviewItem__Link" href="${pageContext.request.contextPath }/replydetail/${reply.storeReviewNo}">
			    <div class="RestaurantReviewItem__User">
			      <!--<div class="RestaurantReviewItem__UserPictureWrap">
			        <img class="RestaurantReviewItem__UserPicture loaded" data-src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/707184_1541421772065?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80" alt="user profile picture" src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/707184_1541421772065?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80" data-was-processed="true">
			      </div>-->
			      
			      <span class="RestaurantReviewItem__UserNickName">모진수</span>
			
			      <ul class="RestaurantReviewItem__UserStat">
			        <li class="RestaurantReviewItem__UserStatItem RestaurantReviewItem__UserStatItem--Review">402</li>
			        <li class="RestaurantReviewItem__UserStatItem RestaurantReviewItem__UserStatItem--Follower">57</li>
			      </ul>
			      
			<!--      <i class="RestaurantReviewItem__HolicBadge"></i>-->
			    </div>
			
			    <div class="RestaurantReviewItem__ReviewContent">
			      <div class="RestaurantReviewItem__ReviewTextWrap">
			
			        <p class="RestaurantReviewItem__ReviewText">
			         	${reply.storeReviewContent}
			        </p>
			
			        
			        <span class="RestaurantReviewItem__ReviewDate">${reply.storeReviewDate}</span>
			      </div>
			      
			      <ul class="RestaurantReviewItem__PictureList">
			      <li class="RestaurantReviewItem__PictureItem">
			        <button class="RestaurantReviewItem__PictureButton" data-index="0">
			          <img style="padding-bottom: 10px;" class="RestaurantReviewItem__Picture loaded" data-src="https://mp-seoul-image-production-s3.mangoplate.com/707184_1584057862288004.jpg?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80" alt="review picture" src="https://mp-seoul-image-production-s3.mangoplate.com/707184_1584057862288004.jpg?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80" data-was-processed="true">
			          
			        </button>
			      </li>
			    </ul>
			    </div>
			
			    <div class="RestaurantReviewItem__Rating RestaurantReviewItem__Rating--Recommend">
			      <span style="font-size: 150%;" class="RestaurantReviewItem__RatingText">${reply.storeCount}점</span>
			    </div>
		
			   </a>
		
			</li>
			</c:forEach>
		</ul>

            
          </section>
    </section>

    
    <!-- FOOTER
    ================================================== -->
    <footer class="top-padding bg-dark">
        <!--Content -->
        <div class="container">
            <div class="row align-self-center">
                <div class="col-lg-4 col-md-10">
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

</html></html>