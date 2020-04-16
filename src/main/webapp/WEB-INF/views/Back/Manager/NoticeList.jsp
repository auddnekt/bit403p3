<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="Coral - Onepage portfolio Template">
    <meta name="author" content="esrat">
   
    <!-- Fontawseom Icon CSS -->
     <link href="${pageContext.request.contextPath}/resources/assets/css/all.css" rel="stylesheet" />
   <link rel="shortcut icon" href="#">   
    <!-- Theme CSS -->
             
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css" />     
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css" />

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
   $(document).ready(function(){
      var g_value='${sessionScope.userGrade}';
      
      
      if(g_value==1) $("#btnWrite").show();
      else $("#btnWrite").hide();
      
      if(g_value==1) $(".gradeValue").show();
      else $(".gradeValue").hide();
      
      $("#btnWrite").click(function(){
         location.href="${path}/controller/noticeinsert";   
      });      
   });
   
   
</script>

<script>
$(function(){
    var className =""  //변수를 선언한다.
    
    var flag = 0;
    var org_txt = "";
    
    $(".f_question1").on("click", function(){
       
          console.log("f_q_link click!!!");
          console.log("1 :: " + $(this).next().children());
          
          className = $(this).next().attr('class').slice(-2)
          
          
          
          if(className=='on'){
             $(this).next().removeClass('on');
             $(this).children().children().eq(3).children().css({transform:'rotate(0deg)',transition:'all 0.4s',color:'black'});
             $(this).next().children().children().eq(1).text($(this).next().children().children().eq(2).text());
          }else{
             $(this).next().addClass('on');
             $(this).children().children().eq(3).children().css({transform:'rotate(180deg)',transition:'all 0.4s',color:'orange'});             
             $(this).next().children().children().eq(1).html($(this).next().children().children().eq(1).text());
          }
          
          
          //console.log($(this).next().children().children().eq(1).val());
          /* console.log("-------------------------------");
          console.log("text : " + $(this).next().children().children().eq(1).text());
          console.log("html : " + $(this).next().children().children().eq(1).html());
          console.log("val  : " + $(this).next().children().children().eq(1).val());
           */
          
          //console.log($(".f_answer1 .clearfix li").eq(1).text());
          //$(".f_answer1 .on .clearfix li").eq(1).html($(".f_answer1 .on .clearfix li").eq(1).text());          
       
    });
});
</script>

<title>What is eat today?</title>
</head>
<body id="page-top">
   <jsp:include page="/header" ></jsp:include>
   
<!-- header
    ================================================== -->
    
<section class="section" id="feature">
        <div class="container">
            <div class="row justify-content-center mb-6">
                <div class="col-md-10 col-lg-8 text-center">

                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>공지사항</b>
                    </h2>
                        
                    <!-- Subheading -->
                    <p class="mb-1">
                       What should We Eat Today? Notice
                    </p>
                    <div class="mb-4" align="right">
               <button type="button" id="btnWrite" class="btn btn-primary btn-lg" >글작성</button>
               </div>
                 </div>
            </div>
          </div>
          <br>
   <c:forEach var="row" items="${dto}">
      
      <div class="container" align="center">
        
      <ul class="fnq">
              <li class="f_question1">
                  <ul class="clearfix">
                      <li></li>
                      <li><h3><c:out value="${row.insertTime}"/></h3></li>
                      <li><h1><c:out value="${row.noticeTitle}"/></h1></li>
                      <li><i class="fa fa-angle-double-up"></i></li>
                  </ul>
                  <hr class="line">
                  <div class="f_q_link"></div>
              </li>
              <li class="f_answer1">
                  <ul class="clearfix">
                      <li class="modidel"></li>
                      <li class="modidel"id="noticeContent" style="display: block;"><c:out value="${row.noticeContent}"/></li>
                      <li class="modidel" id="noticeContent" style="display: none;"><c:out value="${row.noticeContent}"/></li>
                      <li class="modidel" ><p align="right">
                      <a class="gradeValue" href ="${pageContext.request.contextPath }/noticeupdate/${row.noticeNo}">수정</a>
                  <a class="gradeValue" href ="${pageContext.request.contextPath }/noticedelete/${row.noticeNo}">삭제</a>
                  </p>
                  </li>                  
                  </ul>
              </li>     
       </ul>       
      </div>
   </c:forEach>  
</section>

   <jsp:include page="/footer" ></jsp:include>

    <!-- JAVASCRIPT
    ================================================== -->
    <!-- Global JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/libs/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/libs/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/ajax-contact.js"></script>
     
    <!-- Theme JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/theme.js"></script>
    
</body>
</html>