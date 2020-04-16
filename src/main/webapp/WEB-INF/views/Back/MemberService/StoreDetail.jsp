<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <title>What is eat today?</title>
    
    <!-- map api -->
    <script src = "https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1ca6d6385e68c28b0db55333705fbba&libraries=services,clusterer,drawing"></script>
	
    
    <!-- jQuery Modal -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    
</head>
<script>
$(document).ready(function(){
	
	var a = "${dto.userNickName}";
	var b = "${sessionScope.userNickName } ";

	console.log(typeof a + "!!")
	console.log(typeof b + "!!")
	
	
	if(a==b) $(".pagination").show();
		else $(".pagination").hide();

	getLocation();
	
	var upDown = "up";

	$(".recomend").on("click", function(){
		$.ajax({
			url:"${pageContext.request.contextPath}/storeup",
			type:"GET",
			data : {
				 storeno: ${dto.storeNo},
				 userid	: '${sessionScope.userId}',
				 upDown : upDown
			}
			,
			success : function(data){

				if(data == 1) {
					$(".recomend").html("<i class='far fa-star fa-starup' style='color: #8C8C8C' id='b'>추천</i>")
					alert("추천을 취소하였습니다");
				} else {
					alert("추천 하였습니다");
					$(".recomend").html("<i class='far fa-star fa-starup' style='color: #4374D9' id='a'>추천</i>")
				}
				var action = data;
				
				
				/* $(".fa-up").html(action); */

				$.ajax({
					url:"${pageContext.request.contextPath}/storeupcount",
					type:"GET",
					data : {
						 storeno: ${dto.storeNo},
						 userid	: '${sessionScope.userId}',
						 upDown : action
					}
					,
					success : function(data){
						$(".fa-up").html(data);
					},
					error : function(e) {
						console.log(e);
					}
				});
			},
			error : function(e) {
				console.log(e);
			}
		});
	});
});
	
	
	/* 지도 api */
	function getLocation() {

		var mapContainer = document.getElementById('StoreMap'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표 
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	
	var addr = "${dto.storeAddr}";
	
	geocoder.addressSearch(addr, function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">${dto.storeName}</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});
	};
	getLocation();
</script>
<style>
	.detailcontent{
		/* margin-top: -10px; */
		line-height: 1.4;
	}
	.fa-starup:hover {
	color : #4374D9;
	}
	
	@media (max-width:1100px) {
    	.RestaurantReviewList{
    		width: 90%;   
    	}
    }
    @media (min-width:1101px) {
    	.RestaurantReviewList{
    		width: 1000px;   
    	}
    }
    
   
            
   a:hover{
        	text-decoration: none;
        }
    
	 section.replyList { padding:0px 0; margin : 0px auto ; width : 80%;}
	 section.replyList ol { padding:0; margin:0; list-style:none;}
	 .replyList ol li { padding:0px 20px 20px 0px; border-bottom:2px solid silver;}
	 section.replyList div.userInfo { padding:-20px 0; }
	 section.replyList div.userInfo .userName { font-size:24px; font-weight:bold;}
	 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px;} 
	 section.replyList div.replyContent { padding:0px 20px; margin:0px 0px;}
    
}
</style>

<body id="page-top">
	<jsp:include page="/header" ></jsp:include>
    <!-- NAVBAR
    ================================================= -->
   <%--  <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
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
    </section> --%>

    <!-- SECTIONS
    ================================================== -->
    <!-- PAGES
    ================================================== -->

    <!-- FEATURES
    ================================================== -->
    <section class="section" id="feature" >
         <div class="detailicon">
         
        <% if(session.getAttribute("userId")!=null){  %>
			<a href="${pageContext.request.contextPath }/replyinsert/${dto.storeNo}" class="write">
	          <i class="fas fa-pen">${storeUpAction }리뷰작성</i>
	        </a>
	        
	        <a href="javascript:void(0);" class="recomend">
	        	<c:if test="${StoreUpAction == 0 }">
	        		<i class="far fa-star fa-starup" style="color: #8C8C8C" id="a">추천</i>
	        	</c:if>
	        	<c:if test="${StoreUpAction == 1 }">
	        		<i class="far fa-star fa-starup" style="color: #4374D9" id="a">추천</i>
	        	</c:if>
	        </a>
		<% } %>

        </div>
        <hr>
        <div class="container">
         
          <div class="col-md-12">
           <div class="col-lg-7">
                    <div class="foodimg">
                        <img src="${pageContext.request.contextPath}/${dto.storeImg}"
                         style = "width: 100%; max-width: 760px; height: 400px; vertical-align: middle">
                    </div>  
            </div>      
        <!-- / .container -->
      
 				<div class="icon">
                    <i class="fas fa-eye">${dto.storeHit}</i>&nbsp&nbsp
                    <i class="fas fa-star fa-up">${dto.storeUp}</i>&nbsp&nbsp
                    <i class="fas fa-pen">${ReplyCount }</i>
                    
                  </div>
	                   <c:if test="${dto.storeScore == null }">
	                  	<p class="detailscore">0.0</p>
	                  </c:if>
	                  
	                  <p class="detailscore">${dto.storeScore }</p>
	                    <p class="detailstore">${dto.storeName}</p>
	                    <p class="detailcontent">작성자 : ${dto.userNickName}</p>
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
	            	<li><a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}?userid=${sessionScope.userId}">수정</a></li>
		       		<li><a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a></li>
		       	<%-- <% if(session.getAttribute("userNickName").equals(${dto.userNickName })){  %>
					<li><a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}?userid=${sessionScope.userId}">수정</a></li>
		       		<li><a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a></li>
				<% } %> --%>
            </ul>
            </nav>
		       
        </div>
        
        
        <br><hr class="line"><br><br>
        <div class="container">
        	<div class="col-md-12" align="center">
       			 <h2 class="lg-title mb-2">
                    <b>음식점위치</b>
                 </h2>
                 <!-- Subheading -->
                 <p class="mb-5" style="font-size:20px;">
                        Store Location
                 </p>
                 
                 <div id="StoreMap" style="height:400px;"></div>
        
            </div>
        </div>
       	
        <%-- <section class="RestaurantReviewList">
            <header class="RestaurantReviewList__Header">
              <h2 class="RestaurantReviewList__Title">
                <span class="RestaurantReviewList__RestaurantName">${dto.storeName }</span><span class="RestaurantReviewList__RestaurantNameSuffixDesktop">리뷰</span><span class="RestaurantReviewList__RestaurantNameSuffixMobile">음식점의 리뷰</span>
              <span class="RestaurantReviewList__AllCount">(${ReplyCount }개의 리플)</span></h2>

              
            </header>

            <ul class="RestaurantReviewList__ReviewList">
			<c:forEach var = "reply" items = "${reply }">
            <li class="RestaurantReviewItem RestaurantReviewList__ReviewItem">
		   <a class="RestaurantReviewItem__Link " href="${pageContext.request.contextPath }/replydetail/${reply.storeReviewNo}" rel="modal:open" target="_blank">
			    <div class="RestaurantReviewItem__User">
			      <!--<div class="RestaurantReviewItem__UserPictureWrap">
			        <img class="RestaurantReviewItem__UserPicture loaded" data-src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/707184_1541421772065?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80" alt="user profile picture" src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/707184_1541421772065?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80" data-was-processed="true">
			      </div>-->
			      
			      <span class="RestaurantReviewItem__UserNickName">${reply.userNickName }</span>
			
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
			         <!--  <img style="padding-bottom: 10px;" class="RestaurantReviewItem__Picture loaded" data-src="https://mp-seoul-image-production-s3.mangoplate.com/707184_1584057862288004.jpg?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80" alt="review picture" src="https://mp-seoul-image-production-s3.mangoplate.com/707184_1584057862288004.jpg?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80" data-was-processed="true"> -->
			          
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

            
          </section> --%>
		<br><br><hr class="line">
		<span class="review">[<font color="orange">R</font>eview]</span>
		<section class="replyList">
			<ol>
				<c:forEach items="${reply}" var="reply">
					<li class="replybox">
						<div class="userInfo">
						<span class="userName">${reply.userNickName}</span>     
						<span class="date">${reply.storeReviewDate}</span> 
						<span style="font-size: 150%; margin-left: 20px;"class="RestaurantReviewItem__RatingText">${reply.storeCount}점</span>
						</div>
						<div class="replyContent">${reply.storeReviewContent}</div>
						<c:set var="userNickName" value="${sessionScope.userNickName} "></c:set>
 						<c:if test="${reply.userNickName == userNickName}">
							<span class="replybtn"><a href="${pageContext.request.contextPath }/replyupdate/${reply.storeReviewNo}"
								class="btn btn-primary btn-lg" style="margin: 0px 7px 10px 0px; width: 50px; font-size: 12px; height: 30px; padding: 5px 0px;">수정</a>
								<a href="${pageContext.request.contextPath }/replydelete/${reply.storeReviewNo}?rno=${reply.storeNo}" class="btn btn-primary btn-lg"
								style="margin: 0px 7px 10px 0px; width: 50px; font-size: 12px; height: 30px; padding: 5px 0px;">삭제</a>
							</span>
							</c:if>
					</li>
				</c:forEach>
			</ol>
		</section>
	</section>

    <jsp:include page="/footer" ></jsp:include>
    <!-- FOOTER
    ================================================== -->
    <!-- <footer class="top-padding bg-dark">
        Content
        <div class="container">
            <div class="row align-self-center">
                <div class="col-lg-4 col-md-10">
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
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/ajax-contact.js"></script>

    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/theme.js"></script>

</body>

</html>