<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>


$(document).ready(function(){
 	$("#5btn").one("click", function(){
		let count = "<input type = 'hidden' name = 'StoreCount' id = 'StoreCount' value = 5>";
		$("#rep").append(count);
		})
	$("#4btn").one("click", function(){
		let count = "<input type = 'hidden' name = 'StoreCount' id = 'StoreCount' value = 4>";
		$("#rep").append(count);
		})
	$("#3btn").one("click", function(){
		let count = "<input type = 'hidden' name = 'StoreCount' id = 'StoreCount' value = 3>";
		$("#rep").append(count);
		})
	$("#2btn").one("click", function(){
		let count = "<input type = 'hidden' name = 'StoreCount' id = 'StoreCount' value = 2>";
		$("#rep").append(count);
		})
	$("#1btn").one("click", function(){
		let count = "<input type = 'hidden' name = 'StoreCount' id = 'StoreCount' value = 1>";
		$("#rep").append(count);
		}) 

});

</script>
</head>
<body>
	${dto.storeName} ${dto.storeScore}점 조회수 : ${dto.storeHit} 추천수 : ${dto.storeUp}
	음식 분류 : ${dto.storeCategori}<br>
	주소 : ${dto.storeAddr}<br>
	작성일 : ${dto.storeDate}<br>
	가격대 : ${dto.storeCost}<br>
	주차가능 : ${dto.storeParking}<br>
	영업시간 : ${dto.storeHours}<br>
	브레이크타임 : ${dto.storeBTime}<br>
	
	<a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}">수정</a>
	<a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a><br>
	
	<c:forEach var = "reply" items = "${reply }">
<%-- 	<c:if test=${reply!=0 }> --%>	
	        ${reply.storeReviewContent}<br>
	              작성 날짜 : ${reply.storeReviewDate}
	        <a href = "${pageContext.request.contextPath }/replydelete/${reply.storeReviewNo}?rno=${reply.storeNo }">삭제</a><br>

<%--     </c:if> --%>
	</c:forEach>  
	평점<input type = "button" id = "5btn" value = "5점">
	<input type = "button" id = "4btn" value = "4점">
	<input type = "button" id = "3btn" value = "3점">
	<input type = "button" id = "2btn" value = "2점">
	<input type = "button" id = "1btn" value = "1점">
	<form id = "rep" method = "post" action = "${pageContext.request.contextPath }/replyinsert">
		<label for = "ReviewContent">댓글</label>
		<input type = "text" name = 'StoreReviewContent' id = "StoreReviewContent"><br>
		<input type = "hidden" name = 'StoreNo' id = 'StoreNo' value = "${dto.storeNo}"><br>
		<input type = "submit" value = "전송">
	</form>
</body>
</html>