<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/front/member/findIdResult" %>
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"		uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/common/header.jsp" %>
	<%@ include file="/include/common/webfont.jsp" %>
	<%@ include file="/include/common/css.jsp" %>
	<script type="text/javascript" src="/js/front.js"></script>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<!-- 페이지의 상단에 보이는 로고 및 로그인 / 회원가입 코드 -->
		<%@ include file="/include/front/maingnb.jsp" %>
	<!-- Header Section End -->

	<!-- Breadcrumb Begin -->
	<!-- 페이지의 상단 로고 바로 밑에 출력되는 전체 상품 / 기능별 / 성분별 / 대상별 / 맞춤 건강 / 고객센터 / 소개 메뉴 -->
		<%@ include file="/include/front/middlegnb.jsp" %>
	<!-- Breadcrumb End -->

	<section class="checkout spad">
		<div class="container">
			<form id="frmMain" method="POST" class="checkout__form">
				<div class="row3">
					<div class="col-lg-12">
						<h5 >회원 아이디 찾기</h5>
						<div class="row3">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<p style="font-size: 20px;">회원님의 이메일은: ${findId.email} 입니다</p>
							</div>
							<div class="col-lg-6 col-md-12 col-sm-12" style="padding-left: 8px; padding-right: 8px;">
								<div class="checkout__form__input">
									<input type="button" value="비밀번호 찾기" id="findPasswd" onClick="moveToFindPasswd();"/>
								</div>
							</div>
							<div class="col-lg-6 col-md-12 col-sm-12" style="padding-left: 8px; padding-right: 8px;">
								<div class="checkout__form__input">
									<input type="button" value="회원가입" id="registerId" onClick="goToRegister();"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- Instagram Begin -->
	<!-- 페이지 하단 이미지가 나열 되는 곳 data-setbg="/img/instagram/insta-1.jpg" 이 부분을 우리 상품 이미지로 -->
	<%@ include file="/include/common/footerpic.jsp" %>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<%@ include file="/include/common/footer.jsp" %>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<%@ include file="/include/common/js.jsp" %>
</body>
</html>