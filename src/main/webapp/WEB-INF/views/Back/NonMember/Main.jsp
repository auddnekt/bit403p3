<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}Back/NonMember/Main">메인으로</a><br>

<a href="NonMember/Login">로그인</a><br>
<a href="NonMember/Logout">로그아웃</a><br>
<a href="NonMember/MemberJoin">회원가입</a><br>
<a href="NonMember/FindIdPwd">아이디/패스워드 찾기</a><br>
<a href="NonMember/RandomReco">랜덤추천</a><br>
<h3>지역별 음식</h3>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강동">
	<input type = "submit" value = "강동음식 검색">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강서">
	<input type = "submit" value = "강서음식 검색">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강남">
	<input type = "submit" value = "강남음식 검색">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "강북">
	<input type = "submit" value = "강북음식 검색">
</form><br>
<h3>베스트 음식</h3>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreFood">
	<input type = "hidden" name = "searchtxt" value = "한식">
	<input type = "submit" value = "한식베스트">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "중국식">
	<input type = "submit" value = "중식베스트">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "일식">
	<input type = "submit" value = "일식베스트">
</form><br>
<form method="post" action="SearchSearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr1">
	<input type = "hidden" name = "searchtxt" value = "경양식">
	<input type = "submit" value = "경양식베스트">
</form><br>
</body>
</html>	