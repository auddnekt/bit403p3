<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action = "${pageContext.request.contextPath}/memberinsertresult">
		<label for = "StoreName">가게 이름</label>
		<input type="text" name = "StoreName" id = "StoreName"><br>
		<label for = "StoreAddr1">동</label>
		<input type="text" name = "StoreAddr1" id = "StoreAddr1"><br>
		<label for = "StoreAddr2">상세주소</label>
		<input type="text" name = "StoreAddr2" id = "StoreAddr2"><br>
		<label for = "StoreCategori">가게 종류</label>
		<input type="text" name = "StoreCategori" id = "StoreCategori"><br>
		<label for = "StoreFood">대표메뉴</label>
		<input type="text" name = "StoreFood" id = "StoreFood"><br>
		<label for = "StoreCall">전화번호</label>
		<input type="text" name = "StoreCall" id = "StoreCall"><br>
		<label for = "StoreCall">내용</label>
		<input type="text" name = "StoreContent" id = "StoreContent"><br>
		<input type="submit" value = "전송">
	</form>
</body>
</html>