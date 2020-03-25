<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var = "dto" items = "${dto }">
		<a href = "${pageContext.request.contextPath }/memberdetail/${dto.storeNo}">
		${dto.storeName }</a> ${dto.storeAddr}<br>
		<hr>
	</c:forEach>
</body>
</html>