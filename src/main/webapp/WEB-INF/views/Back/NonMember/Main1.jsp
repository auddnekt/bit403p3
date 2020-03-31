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
	
	$('#btn').on("click", function(){
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
<a href="${pageContext.request.contextPath}/storeview" rel="modal:open">최근본목록</a><br>

<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "text" name = "searchtxt">
	<input type = "submit" value = "검색">
	<input type = "hidden" name = "search" value="">
</form><br>
<h3>지역별 음식</h3>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr">
	<input type = "hidden" name = "searchtxt" value = "강동">
	<input type = "submit" value = "강동음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr">
	<input type = "hidden" name = "searchtxt" value = "강서">
	<input type = "submit" value = "강서음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr">
	<input type = "hidden" name = "searchtxt" value = "강남">
	<input type = "submit" value = "강남음식 검색">
</form><br>
<form method="post" action="storesearch?currpage${page.startBlock }">
	<input type = "hidden" name = "search" value = "StoreAddr">
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

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var = "Store" items = "${StoreSearch }">
		<a href = "#">${Store.storeName }</a><br> 
		${Store.storeAddr}<br>
		<hr>
	</c:forEach>
	<br>
	
	<c:if test="${page.prev }">
		<a href="storesearch?currpage=${page.startBlock-1 }&search=${search }&searchtxt=${searchtxt } ">이전</a>
	</c:if>
	<c:forEach var = "index" begin="${page.startBlock }" end="${page.endBlock }">
		<c:if test = "${index  != page.currPage }">
			<a href="storesearch?currpage=${index }&search=${search }&searchtxt=${searchtxt }">${index }</a>
		</c:if>
		<c:if test = "${index  == page.currPage }">
			<c:out value = "${index }"/>
		</c:if>
	</c:forEach>	
	<c:if test="${page.next }">
		<a href="storesearch?currpage=${page.endBlock+1 }&search=${search }&searchtxt=${searchtxt } ">다음</a>
	</c:if>
	
	<a href="${pageContext.request.contextPath}/storeinsert">작성</a>
	
	
</body>

<body>
	<c:forEach var = "Store" items = "${StoreSearch }">
		<a href = "${pageContext.request.contextPath }/memberdetail/${Store.storeNo}">${Store.storeName }</a><br> 
		${Store.storeAddr}<br>
		<hr>
	</c:forEach>
	<br>
	
	<c:if test="${page.prev }">
		<a href="membersearch?currpage=${page.startBlock-1 }&search=${search }&searchtxt=${searchtxt } ">이전</a>
	</c:if>
	<c:forEach var = "index" begin="${page.startBlock }" end="${page.endBlock }">
		<c:if test = "${index  != page.currPage }">
			<a href="membersearch?currpage=${index }&search=${search }&searchtxt=${searchtxt }">${index }</a>
		</c:if>
		<c:if test = "${index  == page.currPage }">
			<c:out value = "${index }"/>
		</c:if>
	</c:forEach>	
	<c:if test="${page.next }">
		<a href="membersearch?currpage=${page.endBlock+1 }&search=${search }&searchtxt=${searchtxt } ">다음</a>
	</c:if><br>
	
	<a href="${pageContext.request.contextPath}/storeinsert">작성</a>
</body>



<body>
	${dto.storeName} ${dto.storeScore}점 조회수 : ${dto.storeHit} 추천수 : ${dto.storeUp}
	음식 분류 : ${dto.storeCategori}<br>
	주소 : ${dto.storeAddr}<br>
	작성일 : ${dto.storeDate}<br>
	가격대 : ${dto.storeCost}<br>
	주차가능 : ${dto.storeParking}<br>
	영업시간 : ${dto.storeHours}<br>
	브레이크타임 : ${dto.storeBTime}<br>
	이미지 : <img src = "${dto.storeImg }"><br>
	
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