<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<!-- css 수정 -->
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
	/* $(document).ready(function(){
		$("#link").on('click', function(){
			(".blocker").toggle();
			(".modal").toggle();
		})
	}) */
</script>



<style>
	.rline {
		font-size : 300%;
		text-align: center;
	}
	.rline1{
		
	}
	.rline2{
		color : orange;
	}
	.rline3{
	
	}
</style>

</head>
<body>

	<p class = "rline rline1">오늘은</p>
	<p class = "rline rline2">${dto.storeCategori}(으)로</p>
	<p class = "rline rline3">정했다!</p>
	<div class="submit text-center">
       	<a class="btn btn-danger btn-lg" href="${pageContext.request.contextPath}/storesearch?currpage${page.startBlock }&searchtxt=${dto.storeCategori }">검색</a>
   		<a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/randomreco" rel="modal:open" id = "link">다시 추천</a>
	</div>

	
    
    
    
    
    
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