<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="section" id="login">
        <div class="container">
	           <div class="row justify-content-center mb-4">
	                <div class="col-md-8 col-lg-8 text-center">
	                    <!-- Heading -->
	                    <h2 class="lg-title mb-2">
	                        <b>로그인</b>
	                    </h2>
	                    <!-- Subheading -->
	                    <p class="mb-5">
	                       Member Login Page
	                    </p>
	                </div>
	            </div>
			    <div class="login-form">
			    <form action="${path}/Back/NonMember/LoginPost" method="post">
			        <div class="form-group">
			        	<div class="input-group">
			                <span class="input-group-addon"><i class="fa fa-user"></i></span>
			                <input type="text" class="form-control" name="userId" placeholder="아이디를 입력해주세요." required="required">				
			            </div>
			        </div>
					<div class="form-group">
			            <div class="input-group">
			                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
			                <input type="password" class="form-control" name="userPw" placeholder="비밀번호를 입력해주세요." required="required">				
			            </div>
			        </div>        
			        <div class="form-group">
			            <button type="submit" class="btn btn-primary login-btn btn-block">로그인</button>
			        </div>
			        <div class="clearfix">
			            <label class="pull-left checkbox-inline"><input type="checkbox">비밀번호 저장</label>
			            <a href="#" class="pull-right" >비밀번호를 잊으셨나요?</a>
			        </div>
					<div class="or-seperator"><i>or</i></div>
			        <p class="text-center">소셜 미디어 계정으로 로그인</p>
			        <div class="text-center social-btn">
			            <a href="#" class="btn btn-warning"><i class="fab fa-korvue"></i>&nbsp; KAKAO</a>
			            <a href="#" class="btn btn-success"><i class="fab fa-neos"></i>&nbsp; NAVER</a>
						<a href="#" class="btn btn-danger"><i class="fab fa-google"></i>&nbsp; Google</a>
			        </div>
			    </form><br>
			    <p class="text-center text-muted small">아직 계정이 없으신가요?
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="${path}/Back/NonMember/register" class="text-center">여기를 눌러 회원가입을 하세요!</a></p>
			</div>
        <!-- / .container -->
        </div>
    </section>
</body>
</html>