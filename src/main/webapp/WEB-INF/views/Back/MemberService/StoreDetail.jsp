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
});
	
	 
</script>
</head>
<body>
	${dto.storeName} ${dto.storeScore}점 조회수 : ${dto.storeHit} 추천수 : ${dto.storeUp}
	음식 분류 : ${dto.storeCategori}<br>
	주소 : ${dto.storeAddr1} ${dto.storeAddr2}<br>
	작성일 : ${dto.storeDate}<br>
	내용 : ${dto.storeContent}<br>
	
	<a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}">수정</a>
	<a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a><br>
	
	<c:forEach var = "reply" items = "${reply }">
<%-- 	<c:if test=${reply!=0 }> --%>	
		
	        ${reply.storeReviewContent}<br>
	              작성 날짜 : ${reply.storeReviewDate}
	        <a href = "${pageContext.request.contextPath }/replydelete/${reply.storeReviewNo}?rno=${reply.storeNo }">삭제</a><br>
    	
<%--     </c:if> --%>
	</c:forEach>  
	평점<input type = "button" id = "5btn" value = "5점"><br>
	<form id = "rep" method = "post" action = "${pageContext.request.contextPath }/replyinsert">
		<label for = "ReviewContent">댓글</label>
		<input type = "text" name = 'StoreReviewContent' id = "StoreReviewContent"><br>
		<input type = "hidden" name = 'StoreNo' id = 'StoreNo' value = "${dto.storeNo}"><br>
		<input type = "submit" value = "전송">
	</form>
	

</body>
</html>