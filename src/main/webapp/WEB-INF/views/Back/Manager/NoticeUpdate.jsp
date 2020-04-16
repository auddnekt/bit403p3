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
     <link href="${pageContext.request.contextPath}/resources/assets/css/all.css" rel="stylesheet" />

    <!-- Theme CSS -->
             
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
      
      
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/responsive.css" rel="stylesheet" />
    <script src="https://cdn.ckeditor.com/ckeditor5/18.0.0/classic/ckeditor.js"></script>
    <title>What is eat today?</title>

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
.ck-editor__editable {
       min-height: 400px;
}
</style>
</head>
<body id="page-top">
	<jsp:include page="/header" ></jsp:include>
   
<!-- header
    ================================================== -->
	<section class="section" id="feature" >
       <div class="container">
           <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>공지사항 수정</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5">
                        Notice Modify Page
                    </p>
                </div>
            </div>
            <!-- / .row -->

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form method="post" action = "${pageContext.request.contextPath}/noticeupdateresult">
                        <!-- form message -->
                        
                            <!-- end message -->
                        <input type = "hidden" name = "NoticeNo" id = "NoticeNo" value = "${dto.noticeNo}"><br>    
                        <div class="row">
                           
                               <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text" name="NoticeTitle" id="NoticeTitle" cols="30" rows="1" class="form-control"
                                    value = "${dto.noticeTitle}" accesskey=""required="required" placeholder="제목을 입력해주세요" >
                                </div>
                            </div>
                           
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <pre><textarea name="NoticeContent" id="NoticeContent" cols="30" rows="12" class="form-control" 
                                      accesskey=""required="required" placeholder="내용을 입력해주세요">${dto.noticeContent}</textarea></pre>
                                </div>
                            </div>
                            
                            
                            <div class="col-lg-12">
                                <div class="submit text-center">
                                
                                  <input name="reset" type="button" class="btn btn-danger btn-lg" value="취소"onClick="history.go(-1)">&nbsp;&nbsp;
                                    <input type="submit" class="btn btn-primary btn-lg" value="수정완료">
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
    <script src="${pageContext.request.contextPath}/resources/libs/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/libs/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/ajax-contact.js"></script>
     
    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/js/theme.js"></script>
	
	<!-- Ck editor -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/ckeditor.js"></script>

</body>
</html>