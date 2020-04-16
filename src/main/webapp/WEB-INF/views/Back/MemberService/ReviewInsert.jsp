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
    
	<!-- jQuery Modal -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    
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

	                            <div class="col-lg-12">
	                                <div class="submit text-center">
	                                   <input name="submit" type="submit" class="btn btn-danger btn-lg" value="취소"></a>
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