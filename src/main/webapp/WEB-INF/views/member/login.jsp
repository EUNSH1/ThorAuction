<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 :: 비드코인</title>
	<link href="/images/bidcoin_coin.png" rel="shortcut icon" type="image/x-icon">

<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- SweetAlert2 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<!-- 로그인 CSS -->
<link rel="stylesheet" href="/css/member/login.css">

<!-- 로그인 JS -->
<script defer src="/js/member/login.js"></script>
</head>
<body>
<div id="root">
        <div class="app">
            <div class="member-card-layout">
                <div class="member-card-layout__container">
                    <div class="member-card-layout__inner">
                        <h1 class="member-card-layout__logo">
                            <a href="../"><img class="member-card-layout__logo-image" src="/images/bidcoin_logo.png" alt="bidcoin"></a>
                        </h1>
                        
                        <div class="login">
                            <form action="login" method="POST" id="loginForm">
                            	<!-- <input type="hidden" name="_csrf" value="{{_csrf.token}}"/> -->
                            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                    <div class="member-input">
                                    <div class="member-input__state">
                                        <input id="id" name="id" class="member-input__box" type="text" placeholder="아이디" autocomplete="off">
                                        <span class="member-input__valid-wrapper"></span>
                                    </div>
                                </div>

								<div class="member-input">
									<div class="member-input__state">
										<input id="pw" name="pw" class="member-input__box" type="password" placeholder="비밀번호"
											autocomplete="off"> <span class="member-input__valid-wrapper"></span>
									</div>
								</div>
								<c:if test="${param.message != null}">
                                	<div id="errorMsg" class="member-input-wrong-message"">${param.message}</div>
                                </c:if>

								<button type="button" id="login_submit_btn" class="member-button login__btn">로그인</button>

								<div class="login__l-sign-up">
									<span class="login__sign-up-link"> <a class="member-link" href="#">아이디 찾기</a> <span
										class="member-link__span">|</span> <a class="member-link" href="#">비밀번호 찾기</a> <span
										class="member-link__span">|</span> <a class="member-link" href="./agree">회원가입</a>
									</span>
								</div>

								<div class="login__l-or">OR</div>

								<div class="simple-login">
									<h2 class="login__fb-title">SNS계정으로 간편 로그인/회원가입</h2>
									<a href="/oauth2/authorization/kakao">
										<img src="/images/member/kakao_login_logo.png" class="kakao-button__img" alt="">
									</a>

									<a href="/oauth2/authorization/naver" style="padding-left: 20px; padding-right: 20px;">
										<img style="width: 47px; height: 47px; border-radius: 23%;" src="/images/social/naver.png">
									</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		history.replaceState({}, null, location.pathname)
    </script>
</body>
</html>