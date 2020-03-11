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
	<c:forEach var = "Store" items = "${StoreSearch }">
		<a href = "#">${Store.StoreName }</a><br>
	</c:forEach>
	<br>
	
	<c:if test="${page.prev}">
		<a href="StoreSearch?currpage${page.startBlock-1 }&search=${search}&searchtxt=${searchtxt}">이전</a>
	</c:if>
	<c:forEach var = "index" begin="${page.startBlock}" end="${page.endBlock }">
		<c:if test = "${index != page.currPage }">
			<a href = "StoreSearch?${index }&search=${search}$searchtxt=${searchtxt}">${index }</a>
		</c:if>
		<c:if test = "${index == page.currPage}">
			<c:out value = "${index }"></c:out>
		</c:if>
	</c:forEach>
	<c:if test="${page.next }">
		<a href="StoreSearch?currpage${page.startBlock+1 }&search=${search}&searchtxt=${searchtxt}">다음</a>
	</c:if>
</body>
</html>