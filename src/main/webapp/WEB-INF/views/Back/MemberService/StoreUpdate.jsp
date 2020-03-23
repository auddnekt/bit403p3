<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action = "${pageContext.request.contextPath }/memberupdateresult">
		<input type = "hidden" name = "StoreNo" id = "StoreNo" value = "${dto.storeNo}"><br>
		<label for = "StoreName">가게 이름</label>
		<input type="text" name = "StoreName" id = "StoreName" value = "${dto.storeName}"><br>
		<label for = "StoreAddr1">동</label>
		<input type="text" name = "StoreAddr1" id = "StoreAddr1" value = "${dto.storeAddr1}"><br>
		<label for = "StoreAddr2">상세주소</label>
		<input type="text" name = "StoreAddr2" id = "StoreAddr2" value = "${dto.storeAddr2}"><br>
		<label for = "StoreCategori">가게 종류</label>
		<input type="text" name = "StoreCategori" id = "StoreCategori" value = "${dto.storeCategori}"><br>
		<label for = "StoreFood">대표메뉴</label>
		<input type="text" name = "StoreFood" id = "StoreFood" value = "${dto.storeFood}"><br>
		<label for = "StoreCall">전화번호</label>
		<input type="text" name = "StoreCall" id = "StoreCall" value = "${dto.storeCall}"><br>
		<label for = "StoreCall">내용</label>
		<input type="text" name = "StoreContent" id = "StoreContent" value = "${dto.storeContent}"><br>
		<input type="submit" value = "전송">
	</form>
</body>
</html>