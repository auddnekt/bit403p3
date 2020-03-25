<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%-- <%@ include file="../include/head.jsp"%> --%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section class="section" id="feature" >
       <div class="container">
           <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-8 text-center">
                    <!-- Heading -->
                    <h2 class="lg-title mb-2">
                        <b>회원가입</b>
                    </h2>
                    <!-- Subheading -->
                    <p class="mb-5">
                        This is the screen for Membership Registration.
                    </p>
                </div>
            </div>
            <!-- / .row -->

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form action="${path}/Back/NonMember/register" method="post" id="main_contact_form" class="contact__form">
                        <!-- form message -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                        Your message was sent successfully.
                                    </div>
                                </div>
                            </div>
                            <!-- end message -->
                            
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userName" id="name" class="form-control" placeholder="이름을 입력해주세요.">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userId" id="id" class="form-control" placeholder="아이디를 입력해주세요." required="required">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="password" name="userPw"  class="form-control" placeholder="비밀번호를 입력해주세요." required="required">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="비밀번호를 다시 입력해주세요." required="required">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userEmail"  class="form-control" placeholder="E-mail을 입력해주세요." required="required">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="userNickname" class="form-control" placeholder="닉네임을 입력해주세요." required="required">
                                </div>
                            <br>
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="submit text-center">
                                   <a href="#"><input name="submit" type="submit" class="btn btn-danger btn-lg" value="취소"></a>&nbsp;&nbsp;
                                    <a href="#"><input name="submit" type="submit" class="btn btn-primary btn-lg" value="회원가입 완료"></a>
                                    <p class="pt-3">회원가입을 하려면 위 버튼을 눌러주세요.</p>
                                </div>
                            </div>
                             <a href="${path}/Back/NonMember/Login" class="text-center">로그인</a>
                        </div>
                    </form>
                </div>
            </div>
        <!-- / .container -->
        </div>
    </section>
</body>
</html>