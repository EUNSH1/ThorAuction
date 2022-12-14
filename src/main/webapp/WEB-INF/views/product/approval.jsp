<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>세상의 모든 경매: BIDCOIN</title>
  <link href="/images/miniLogo_BidCoin.png" rel="shortcut icon" type="image/x-icon">
	<c:import url="../template/boot.jsp"></c:import>
	<link href="/css/reset.css" rel="stylesheet">
	
	<link rel="stylesheet" href="/css/chunk48-455aca93.css"> <!-- carousel -->
	<link rel="stylesheet" href="/css/chunk166-a1b0af68.css"> <!-- production-selling -->
	<link rel="stylesheet" href="/css/chunk244-0436abc3.css"> <!-- html-->
	<link rel="stylesheet" href="/css/chunk55-0c2ab26.css">
	<link rel="stylesheet" href="/css/testThor.css">
	<link rel="stylesheet" href="/css/testThorText.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<section class="container d-flex flex-wrap justify-content-center">
		
	
	
		<div class="production-selling-overview container">
		<div style="text-align: center; font-size: 40px; font-weight: 600;">
		
			상품 미리보기
		
		</div>
		<hr>
			<div class="production-selling-overview__container row">
				<div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
					<div class="production-selling-cover-image-container"> <!-- check -->
						<div class="carousel production-selling-cover-image production-selling-overview__cover-image" role="region" aria-roledescription="carousel"> <!-- check -->
							<div class="carousel__list-wrap production-selling-cover-image__carousel-wrap">
								<div class="carousel__list" id="carousel__list" aria-live="polite" style="transform: translateX(-0%); transition: transform 1s ease 0s;">
									
						<c:forEach items="${productVO.productFileVOs}" var="file" varStatus="status">
							<c:if test="${not file.sort}">
								
								<div class="carousel__list__entry production-selling-cover-image__entry" role="group" aria-roledescription="slide" aria-label="${status.count}" style="width: 100%;">
									<img class="production-selling-cover-image__entry__image" tabindex="0" alt="상품의 서브 이미지" src="/file/product/${file.fileName}?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1" 
									srcset="/file/product/${file.fileName}?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 1.5x,/file/product/${file.fileName}?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 2x,/file/product/${file.fileName}?gif=1&amp;w=1440&amp;h=1440&amp;c=c&amp;webp=1 3x">
												<svg class="production-selling__timer__arrow-icon" width="14" height="14" preserveAspectRatio="xMidYMid meet">
													<path fill="#FFF" d="M3.5 11.487l1.313 1.346L10.5 7 4.812 1.167 3.5 2.513 7.875 7z"></path></svg></a>
								</div>
									
							</c:if>
						</c:forEach>
						
						</div>
							<ul class="production-selling-cover-image__list">
								<c:forEach items="${productVO.productFileVOs}" var="file" varStatus="status">
									<c:if test="${not file.sort}">
										<li class="production-selling-cover-image__list__item">
											<button class="production-selling-cover-image__list__btn" type="button" aria-label="${status.count}">
												<img class="image" alt="상품의 대표 이미지" src="/file/product/${file.fileName}?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1" 
												srcset="/file/product/${file.fileName}?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,/file/product/${file.fileName}?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 2x,
												/file/product/${file.fileName}?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 3x">
											</button>
										</li>
									</c:if>
								</c:forEach>
							</ul>
								<div class="production-selling-cover-image__paginator">
								<c:forEach items="${productVO.productFileVOs}" var="file" varStatus="status">
									<c:if test="${not file.sort}">
										<ul class="carousel-paginator">
											<li><span class="carousel-paginator__page tiny" data-key="${status.count}">
											</span>
										</li>
										</ul>
										</c:if>
								</c:forEach>
							</div>
								</div>
									</div>
								</div>
						</div>
						<div class="production-selling-overview__content col-12 col-md-6 col-lg-5">
							<div class="production-selling-header">
								<h1 class="production-selling-header__title">
									<p class="production-selling-header__title__brand-wrap">
										<span class="production-selling-header__title__name">${productVO.productName}</span>
											
											</h1>
										</div>
											<div class="production-selling-header__content">
												<div class="production-selling-header__price"><span class="production-selling-header__price__price-wrap"><span class="production-selling-header__price__discount"><span class="number">시작가</span><span class="percent"></span></span>
												<del class="production-selling-header__price__original">
													<span class="number"><fmt:formatNumber value="${productVO.productPrice}" pattern="###,###"/></span><span class="won">원</span></del><span class="production-selling-header__price__separator production-selling-header__price__original"></span>
													<span class="production-selling-header__price__coupon"><span class="number">현재가 : <fmt:formatNumber value="${productVO.productPrice}" pattern="###,###"/></span><span class="won">원</span>
												</span>
											</div>
										</div>
										<div class="production-selling-header__info-wrap">
											<div class="production-selling-header__promotion">
												<div class="production-selling-header__promotion__title-wrap">
													
												</div>
												<div class="production-selling-header__promotion__content-wrap">
													</div>
												</div>
												<div class="production-selling-header__delivery">
													<div class="production-selling-header__delivery__title-wrap">
													</div>
													<div class="production-selling-header__delivery__content-wrap">
														<div class="_2SUYq production-selling-header__delivery__today-departure__dropdown">
															<div class="production-selling-header__delivery__today-departure__header">
																
											</div>
										</div>
										
									</div>
									
								</div>
								
								<div class="info">
										<ul>
											<li class="timer" id="timer">
											<!-- <div id="timertest">

											</div> -->
											남은시간<strong><span id="d-day-day0">0${productVO.auctionPeriod}</span>일<span id="d-day-hour0">00</span>:<span id="d-day-min0">00</span>:<span id="d-day-sec0">00</span></strong>
											
											</li>
										</ul>
									</div>
							</div>
							
						
						<div class="btn_box right">	
							<!-- return false; -->
							<a href="#" disabled class="mbtn red">관심경매등록</a>
						</div>
						<div class="bidbtn" style="display:block">
							<div class="bid1">
								<span><a href="#" disabled>입찰하기 <strong><em><fmt:formatNumber value="${productVO.productPrice}" pattern="###,###"/></em> 원</strong></a></span>
								1,000원 단위로 입찰
							</div>
							<div class="bid2">
								<span><strong><input type="text" disabled name="bid_money" onkeyup="numberFormat(this);" onblur="priceCutting('C', 1000);" value="<fmt:formatNumber value="${productVO.productPrice}" pattern="###,###"/>"> 원</strong> <a href="#" >자율입찰 +</a></span>
								원하는 입찰 금액을 적어주세요. <br>(입찰시 입찰단위로 변환됩니다.)<br>1,000원 단위로 자율입찰됩니다.
							</div>
						</div>
						<div class="readinfo">
							<h4>구매 전 꼭 확인해주세요!</h4>
							<ul>
								<li class="on"><a href="#">배송정보 안내</a>
								<div class="txt">
								
								유료 - 4,000원
								
								<div>
								발송예정시기: 
								2일 이내.
								
								</div>
								</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		
			<div class="" style="text-align: center;">
			<form class="align-center" action="./approval" method="post" enctype="multipart/form-data">	
				
				

				<input type="hidden" name="productNum" value="${productVO.productNum}">
			</div>
		<table class="table table-bordered border-warning">
		<tbody>
			<tr class="table-warning">
				
				<th style="font-size: 18px; font-weight: 600">경매기간 : ${productVO.auctionPeriod} 일</th>
				<tr>
				<th style="font-size: 18px; font-weight: 600">상품상세정보</th>
				</tr>
				
				  <tr>
				  <td>${productVO.productInformation}</td>
			 	 </tr>
			  
			</tr>
			</tbody>
		</table>
		
			<div>
					<div style="margin-top: 30px;">
						<span style="font-size: 18px; font-weight: 600">카테고리</span> 
							<select name="categoryId" id="" class="pl">
								<option value="">카테고리를 선택해주세요</option>
								<option value="1">의류</option>
								<option value="2">뷰티, 잡화</option>
								<option value="3">가구, 생활, 건강</option>
								<option value="4">가전, 디지털, 컴퓨터</option>
								<option value="5">스포츠, 레저, 자동차</option>
								<option value="6">도서, e쿠폰</option>
							</select>
					</div>
					<div class="applicationDetail" style="margin-top: 30px; font-size: 18px; font-weight: 600">
						<span >경매 단위 입력</span> 
						<input placeholder="3,000" type="text" name="amountUnit" style="text-align: right;"  />원
					</div>
			<div style="margin-top: 30px; font-size: 18px; font-weight: 600">
				<button type="submit" id="applicationSubmit" value="상품 게시" class ="btnRight btn btn-warning" style="color: white; border: 0; width: 120px; height: 70px; font-size: 20px; font-weight: 600; float: right;">상품 게시하기</button>
			
			</div>
		
		</div>
		
		
		
		
		
	</form>
	</section>
	<!-- <script src="/js/timerTest.js"></script> -->
	<script src="/js/test466.js"></script>
	<script src="/js/test36.js"></script>
	<script src="/js/test48.js"></script>
	<!-- <script src="/js/test466.js"></script> -->
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>