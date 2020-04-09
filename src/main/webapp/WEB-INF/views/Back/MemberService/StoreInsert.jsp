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
    
    <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Fontawseom Icon CSS -->
    
   
    <!-- Theme CSS -->
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/review.css">
            
    <!-- Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/all.css">
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
    <script src="http://code.jquery.com/jquery.js"></script>
    <!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    
    <title>What is eat today?</title>
    
    <style>
        .control-label{
            margin:10px;
            font-size: 16px;
        }
        .form-control{
            font-size: 16px;
        }
    </style>
</head>

<body id="page-top">
	<jsp:include page="/header" ></jsp:include>
    <!-- NAVBAR
    ================================================= -->
    <%-- <nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top " id="mainNav">
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
                        <b>추천 음식점 등록</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5" style="font-size: 20px;">
                        Recommended restaurant registration
                    </p>
                </div>
            </div>
            <!-- / .row -->


            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form action="${pageContext.request.contextPath}/memberinsertresult" method="post" id="main_contact_form"
                     class="contact_form" enctype="multipart/form-data">
                        <!-- form message -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                        Your message was sent successfully.
                                    </div>
                                </div>
                            </div>
                            <!-- end message -->
                            

    
            <!-- 본문 들어가는 부분 -->
                
 
 

                
                
                <!--<div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">상호명</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="상호명" maxlength="30">
                    </div>
                </div>-->
                
                <div class="form-group">
			                    <label for="UserNickName" class="col-lg-2 control-label">닉네임</label>
			                    <div class="col-lg-10">
			                        <input type="text" class="form-control" name="UserNickName" id="UserNickName" value = "${sessionScope.userNickName} " readonly >
			                    </div>
			                </div>
                <div class="form-group">
                    <label for="StoreName" class="col-lg-2 control-label">음식점 이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="StoreName" id="StoreName" placeholder="음식점 이름">
                    </div>
                </div>
                <div class="form-group">
                    <!-- <label for="StoreAddr" class="col-lg-2 control-label" style="margin: ">주소</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="StoreAddr" name="StoreAddr" placeholder="주소">
                    </div> -->
                    <label for="StoreAddr" class="col-lg-2 control-label" style="margin: ">주소</label>
                    <div class="col-lg-10">
	                    <input style="margin-bottom: 20px; padding: 0px;" type="button" onclick="sample3_execDaumPostcode()" class="btn btn-primary btn-lg" value="주소 찾기"><br>
						<input type="text" class="form-control" name = "StoreAddr" id="sample3_address" placeholder="주소"><br>
						<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
					</div>	
                    
                </div>
                <div class="form-group">
                    <label for="StoreCategori" class="col-lg-2 control-label">음식점 종류</label>
                    <div class="col-lg-10">
                        <select class="form-control" name="StoreCategori" id="StoreCategori">
                            <option value="한식">한식</option>
                            <option value="중국식">중국식</option>
                            <option value="일식">일식</option>
                            <option value="경양식">경양식</option>
                            <option value="회">회</option>
                            <option value="카페">카페</option>
                            <option value="냉면">냉면</option>
                            <option value="분식">분식</option>
                            <option value="뷔페">뷔페</option>
                            <option value="외국음식">외국음식</option>
                            <option value="치킨">치킨</option>
                            <option value="패스트푸드">패스트푸드</option>
                            <option value="호프">호프</option>
                            <option value="레스토랑">레스토랑</option>
                            <option value="탕">탕</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputName" class="col-lg-2 control-label">대표 메뉴</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" name="StoreFood" id="StoreFood" data-rule-required="true" placeholder="대표 메뉴" maxlength="15">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="FoodWeather" class="col-lg-2 control-label">추천날씨</label>
                    <div class="col-lg-10">
                        <select class="form-control" name="FoodWeather" id="FoodWeather">
                            <option value="맑음">맑음</option>
                            <option value="흐림">흐림</option>
                            <option value="비">비</option>
                            <option value="눈">눈</option>
                            <option value="더움">더움</option>
                            <option value="추움">추움</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="StoreCall" class="col-lg-2 control-label">전화번호</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="StoreCall" id="StoreCall" placeholder="전화번호">
                    </div>
                </div>
                <div class="form-group">
                    <label for="StoreCost" class="col-lg-2 control-label">가격대</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="StoreCost" id="StoreCost" placeholder="가격대">
                    </div>
                </div>
                <div class="form-group">
                    <label for="StoreParking" class="col-lg-2 control-label">주차유무</label>
                    <div class="col-lg-10">
                        <select class="form-control" name="StoreParking" id="StoreParking">
                            <option value="O">O</option>
                            <option value="X">X</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="StoreHours" class="col-lg-2 control-label">영업시간</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="StoreHours" id="StoreHours" placeholder="영업시간">
                    </div>
                </div>
                <div class="form-group">
                    <label for="StoreBTime" class="col-lg-2 control-label">쉬는시간</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="StoreBTime" id="StoreBTime" placeholder="브레이크타임">
                    </div>
                </div>
                <div class="form-group">
                    <label for="StoreClose" class="col-lg-2 control-label">휴일</label>
                    <div class="col-lg-10">
                        <select class="form-control" name="StoreClose" id="StoreClose">
                            <option value="월요일">월요일</option>
                            <option value="화요일">화요일</option>
                            <option value="수요일">수요일</option>
                            <option value="목요일">목요일</option>
                            <option value="금요일">금요일</option>
                            <option value="토요일">토요일</option>
                            <option value="일요일">일요일</option>
                        </select>
                    </div>
                </div>
                <div class="row" style = "clear: both; padding : 15px;">
                <div class="col-sm-2 imgUp">
                            <div class="imagePreview"><img src="" /></div>
                            <label class="btn btn-primary">
                            UPLOAD<input type="file" name = "file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                            </label>
                            </div>
                            <i class="fa fa-plus imgAdd"></i>
                
               <div class="col-lg-12">
	                            <div class="submit text-center">
	                               <input name="submit" type="submit" class="btn btn-danger btn-lg" value="취소"></a>&nbsp;&nbsp;
	                               <input name="submit" type="submit" class="btn btn-primary btn-lg" value="작성완료"></a>
	                            </div>
	                        </div>
	                        <%=request.getRealPath("/") %>
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
    <!-- <footer class="top-padding bg-dark">
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
    
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	<!--이미지-->
	$(".uploadFile img").change(function(){
		   if(this.files && this.files[0]) {
		    var reader = new FileReader;
		    reader.onload = function(data) {
		     $(".imagePreview img").attr("src", data.target.result).width(500);        
		    }
		    reader.readAsDataURL(this.files[0]);
		   }
	});
	
	
	
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_address").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_address").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>

</body>

</html>