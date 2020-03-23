<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jQuery Modal -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>
	$(document).ready(function(){
		$("#link").on('click', function(){
			(".blocker").toggle();
			(".modal").toggle();
		})
	})
</script>



<style>
.blocker{}
.modal{}
</style>
</head>
<body>
	오늘은 ${dto.storeCategori}를 추천!<br>
	<a href="${pageContext.request.contextPath}/storesearch?currpage${page.startBlock }&searchtxt=${dto.storeCategori }">검색</a>
	<a href="${pageContext.request.contextPath}/randomreco" rel="modal:open" id = "link">다시 추천</a>
</body>
</html>