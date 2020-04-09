<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	제목 : ${dto.noticeTitle}<br>
	내용 : ${dto.noticeContent}<br>
	작성자 : ${dto.noticeWriter}<br>
	작성일 : ${dto.insertTime}<br>
	<a href ="${pageContext.request.contextPath }/noticeupdate/${dto.noticeNo}">수정</a>
	<a href ="${pageContext.request.contextPath }/noticedelete/${dto.noticeNo}">삭제</a>
</body>
</html>