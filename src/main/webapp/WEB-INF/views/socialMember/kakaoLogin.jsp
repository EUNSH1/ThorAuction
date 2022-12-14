<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세상의 모든 경매: BIDCOIN</title>
  <link href="/images/miniLogo_BidCoin.png" rel="shortcut icon" type="image/x-icon">
<link href="/css/reset.css" rel="stylesheet">
<link rel="stylesheet" href="/css/member/join.css">
</head>
<style>
input {
	border-top-width: 0px;
	border-right-width: 0px;
	border-left-width: 0px;
	border-bottom-width: 1px;
	text-decoration: none;
	border-style: solid;
	outline: none;
	padding-bottom: 8px;
}

.aa {
	width: 300px;
	height: 100px;
}
</style>
<script defer src="/js/social/loginDetailNull.js"></script>
<script defer src="/js/social/loginAfterDetailNull.js"></script>
<body>
	<c:import url="../template/boot.jsp"></c:import>
	<%-- <c:import url="../template/header.jsp"></c:import> --%>
	<div id="root">
		<div class="app">
			<div class="member-scroll-layout">
				<div class="member-scroll-layout__bg"></div>
				<div class="member-scroll-layout__inner">
					<div class="register-header">
						<h1 class="register-header__logo">
							<img class="register-header__logo-image aa" src="/images/bidcoin_logo.png" alt="토실대">
						</h1>
					</div>

					<input type="hidden" id="kemail" name="kaEmail" value="${kakaoInfo.kaEmail }">

					<form action="kakaoLogin" method="post" id="joinForm">

						<input type="hidden" id="kaName" name="kaNickName" value="${kakaoInfo.kaNickName }">

						<c:forEach items="${getSocialList }" var="kk">
							<c:if test="${kk.kakaoRoleVOs[0].kaNickName == kakaoInfo.kaNickName }">
								<input type="hidden" class="detail" value="${kk.kakaoDetailVOs[0].kaBirth}">
							</c:if>
						</c:forEach>

						<div class="sign-up">
							<h2 class="sign-up__title">개인정보입력</h2>
							<br>
							<br>
							<!-- 이름 -->
							<div class="member-input">이름: ${kakaoInfo.kaName }</div>

							<!-- 생년월일 -->
							<div class="member-input">
								<div class="member-input__state">
									<input id="birth" class="member-input__box" name="kaBirth" maxlength='6' placeholder="생년월일"
										type="text" autocomplete="off">
									<span class="member-input__valid-wrapper"></span>
								</div>

								<div class="sign-up__input-error-message birthErrorMessage"></div>
								<span class="msg_box">${errorMsg.birth}</span>
							</div>

							<!-- 전화번호 -->
							<div class="member-input">
								<div class="member-input__state" style="padding-bottom: 0px;">
									<div class="container">
										<input style="margin-bottom: 20px;" id="phone" oninput="autoHyphen(this)" class="member-input__box"
											name="kaPhone" maxlength='13' placeholder="전화번호" type="text" autocomplete="off">
										<!-- <button id="confirm__btn" type="button" class="member-button confirm__btn">인증번호 받기</button> -->
									</div>
									<span class="member-input__valid-wrapper"></span>
								</div>

								<div class="sign-up__input-error-message phoneErrorMessage"></div>
								<span class="msg_box">${errorMsg.phone}</span>
							</div>

							<!-- 우편번호 -->
							<div class="member-input">
								<div class="member-input__state" style="padding-bottom: 0px;">
									<div class="container">
										<input id="post" name="kaPost" class="member-input__box" readonly="readonly" placeholder="우편번호"
											type="text" autocomplete="off">
										<button type="button" onclick="execution_daum_address()" class="member-button confirm__btn">검색</button>
										<span class="member-input__valid-wrapper"></span>
									</div>
								</div>
								<div class="sign-up__input-error-message postErrorMessage"></div>
							</div>

							<!-- 주소 -->
							<div class="member-input">
								<div class="member-input__state">
									<input id="addr" name="kaAddr" class="member-input__box" readonly="readonly" placeholder="주소"
										type="text" autocomplete="off">
									<span class="member-input__valid-wrapper"></span>
								</div>
								<div class="sign-up__input-error-message addrErrorMessage"></div>
							</div>

							<!-- 상세주소 -->
							<div class="member-input">
								<div class="member-input__state">
									<input id="addr2" name="kaAddrDetail" class="member-input__box" readonly="readonly"
										placeholder="상세주소" type="text" autocomplete="off">
									<span class="member-input__valid-wrapper"></span>
								</div>
							</div>


							<div class="sign-up__l-btn">
								<button type="button" id="join_submit_btn" class="member-button sign-up__btn">가입하기</button>
								<a href="/member/logout">
									<button type="button" id="join_cancel_btn" class="member-button cancel-button sign-up__btn-cancel">로그아웃</button>
								</a>
							</div>
						</div>
						<br>
						<br>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%-- <c:import url="../template/footer.jsp"></c:import> --%>
</body>
<!-- 다음 주소록 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- SweetAlert2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</html>