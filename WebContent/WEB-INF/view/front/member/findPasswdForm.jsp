<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/front/member/findPasswdForm.jsp" %>
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"		uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">
<head>
	<%@ include file="/include/common/header.jsp" %>
	<%@ include file="/include/common/css.jsp" %>
	<%@ include file="/include/common/webfont.jsp" %>
	<script type="text/javascript" src="/js/front.js"></script>
</head>
<body>
<input type="hidden" name="phone" id="phone" />
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<!-- 페이지의 상단에 보이는 로고 및 로그인 / 회원가입 코드 -->
		<%@ include file="/include/front/maingnb.jsp" %>
	<!-- Header Section End -->

	<!-- Breadcrumb Begin -->
	<!-- Breadcrumb End -->

	<section class="checkout spad">
		<div class="container">
			<form action="/front/member/findPasswProc.web" id="frmMain" method="POST" class="checkout__form">
				<div class="row3">
					<div class="col-lg-12">
						<h5 >회원 비밀번호 찾기</h5>
						<div class="row3">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="checkout__form__input">
									<input type="text" id="email" name="email" placeholder="이메일" required autocomplete="off"/>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="checkout__form__input">
									<input type="text" id="mbr_nm" name="mbr_nm" placeholder="이름" required autocomplete="off"/>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="checkout__form__input">
									<p>핸드폰 번호 <span>*</span></p>
									<div style="display: flex; gap: 5px;">
										<input value="휴" type="text" id="phone1" name="phone1"
											maxlength="3" required
											oninput="this.value = this.value.replace(/[^0-9.]/g, '')" autocomplete="off"/>
										-
										<input value="대" type="text" id="phone2" name="phone2"
											maxlength="4" required
											oninput="this.value = this.value.replace(/[^0-9.]/g, '')" autocomplete="off"/>
										-
										<input value="폰" type="text" id="phone3" name="phone3"
											maxlength="4" required
											oninput="this.value = this.value.replace(/[^0-9.]/g, '')" autocomplete="off"/>
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="checkout__form__input">
									<input type="submit" value="휴대폰 인증"id = ""/>
								</div>
								<hr style="border: 1px solid #ccc; margin: 0;">
								<br>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="checkout__form__input">
									<input type="submit" value="임시 비밀번호 발송"id = "findPasswd"/>
								</div>
								<hr style="border: 1px solid #ccc; margin: 0;">
								<br>
							</div>
							<div class="col-lg-6 col-md-12 col-sm-12" style="padding-left: 8px; padding-right: 8px;">
								<div class="checkout__form__input">
									<input type="button" value="아이디 찾기" id="findId" onClick="moveToFindId();"/>
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