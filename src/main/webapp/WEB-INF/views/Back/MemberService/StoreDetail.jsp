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


/* $(document).ready(function(){
	let no = ${dto.storeNo};
	
	$.ajax({
  	  url:'/detailjson/'+no
  	  ,dataType:'json'
  	  ,success:function(data){
  		  let rep = "<div class = 're'>";
  		  rep+="<p>"+data.ReviewContent+"</p>"
  		  rep+="<p>"+data.ReviewDate+"</p>"
  		  rep+="</div>"
  		  $("#rep").append(rep);
  	  	  }
	
  	  }
	 ,error:function(err){
   	    console.log(data);
     	}
	 }
}) */
	
	 
</script>
</head>
<body>
	${dto.storeName}<br>
	${dto.storeCategori}<br>
	${dto.storeAddr1} ${dto.storeAddr2}<br>
	${dto.storeDate}<br>
	${dto.storeContent}<br>
	${dto.storeHit}<br>
	${dto.storeUp}<br>
	
	<a href = "${pageContext.request.contextPath }/memberupdate/${dto.storeNo}">수정</a>
	<a href = "${pageContext.request.contextPath }/memberdelete/${dto.storeNo}">삭제</a><br>
	
	<c:forEach var = "reply" items = "${reply }">
<%-- 	<c:if test=${reply!=0 }> --%>	
		
	        ${reply.storeReviewContent}<br>
	              작성 날짜 : ${reply.storeReviewDate}
	        <a href = "${pageContext.request.contextPath }/replydelete/${reply.storeReviewNo}?rno=${reply.storeNo }">삭제</a><br>
    	
<%--     </c:if> --%>
	</c:forEach>  
	
	<form method = "post" action = "${pageContext.request.contextPath }/replyinsert">
		<label for = "ReviewContent">댓글</label>
		<input type = "text" name = 'StoreReviewContent' id = "StoreReviewContent"><br>
		<label for = "ReviewContent">점수</label>
		<input type = "text" name = 'StoreReviewConut' id = 'StoreReviewCount'><br>
		<input type = "hidden" name = 'StoreNo' id = 'StoreNo' value = "${dto.storeNo}"><br>
		<input type = "submit" value = "전송">
	</form>
</body>
</html>