<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>
$(document).ready(function(){
	
	/* $('#btn').on("click", function(){
		window.open("${pageContext.request.contextPath}/popup", "fullscreen=no, width=700, height=500").focus();
	});
	
	
	$(function(){
		$("#btn-open-dialog,#dialog-background,#btn-close-dialog").click(function () {
			$("#my-dialog1, #dialog-background").toggle();
		});
		$("#btn2").click(function () {
			$("#my-dialog1").toggle();
			$("#my-dialog2").load("${pageContext.request.contextPath}/membersearch");
			})
		});
		$("#dialog-background").click(function () {
			$("#my-dialog2").toggle();
		});
		 */
		
});

</script>

</head>
<body>
<a href="${pageContext.request.contextPath}/main">메인으로</a><br>

<a href="/NonMember/Login">로그인</a><br>
<a href="/NonMember/Logout">로그아웃</a><br>
<a href="${pageContext.request.contextPath}/membersearch">회원추천맛집</a>
<a href="/NonMember/MemberJoin">회원가입</a><br>
<a href="/NonMember/FindIdPwd">아이디/패스워드 찾기</a><br>
<a href="${pageContext.request.contextPath}/randomreco" rel="modal:open">랜덤추천</a><br>

<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "text" name = "searchtxt">
	<input type = "submit" value = "검색">
	<input type = "hidden" name = "search" value="">
</form><br>
<h3>지역별 음식</h3>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강동">
	<input type = "submit" value = "강동음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강서">
	<input type = "submit" value = "강서음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강남">
	<input type = "submit" value = "강남음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강북">
	<input type = "submit" value = "강북음식 검색">
</form><br>
<h3>베스트 음식</h3>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreFood">
	<input type = "hidden" name = "searchtxt" value = "한식">
	<input type = "submit" value = "한식베스트">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreFood">
	<input type = "hidden" name = "searchtxt" value = "중국식">
	<input type = "submit" value = "중식베스트">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreFood">
	<input type = "hidden" name = "searchtxt" value = "일식">
	<input type = "submit" value = "일식베스트">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreFood">
	<input type = "hidden" name = "searchtxt" value = "경양식">
	<input type = "submit" value = "경양식베스트">
</form><br>
</body>
</html>