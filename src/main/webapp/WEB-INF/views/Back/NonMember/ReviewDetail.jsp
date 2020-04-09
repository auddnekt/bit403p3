<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>

<!-- 평점 위치조절
이미지 삽입 여부 -->
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
    	
    	.btn-lg{
    		font-size: 100%;
    	}
    	
    </style>
</head>

<body id="page-top">


    <!-- SECTIONS
    ================================================== -->
    <!-- PAGES
    ================================================== -->

    <!-- FEATURES
    ================================================== -->
    <section class="section" id="feature" >
       <div class="container">

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
                            
                           	<input type = "hidden" name = 'StoreReviewNo' id = 'StoreReviewNo' value = "${dto.storeReviewNo}">
                           	<input type = "hidden" name = 'StoreNo' id = 'StoreNo' value = "${dto.storeNo}">

				            <div class="form-group">
			                    <P class="col-lg-2 control-label">${dto.userNickName}<P>
			                    <span style="font-size: 100%;" class="RestaurantReviewItem__RatingText">${dto.storeCount}점</span>
			                    <br>
			                    <br>
			                </div> 
	                        <div class="row">
	                            <div class="col-lg-12">
	                                <div class="form-group">
	                                    <div style="word-break:break-all; border: none; " id="StoreReviewContent"class="form-control" >
	                                     ${dto.storeReviewContent}</div>
	                                </div>
	                            </div>
	                            
<!-- 	                            <div class="col-sm-2 imgUp">
	                            <div class="imagePreview"></div>
	                            <label class="btn btn-primary">
	                            UPLOAD<input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
	                            </label>
	                            </div>
	                            <i class="fa fa-plus imgAdd"></i> -->
	                            <div class="col-lg-12">
	                                <div class="submit text-center">
	                                   <a href="#" class="btn btn-danger btn-lg">닫기</a>&nbsp;&nbsp;
	                                   <a href="${pageContext.request.contextPath }/replyupdate/${dto.storeReviewNo}" class="btn btn-primary btn-lg"
	                                   style="margin-right:7px;">수정</a>
	                                   <a href="${pageContext.request.contextPath }/replydelete/${dto.storeReviewNo}?rno=${dto.storeNo}" class="btn btn-primary btn-lg">삭제</a>
	                                </div>
	                            </div>
	                        </div>
                        
                    </form>
                </div>
            </div>
        <!-- / .container -->
        </div>
    </section>

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