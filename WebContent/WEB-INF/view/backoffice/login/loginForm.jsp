<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/backoffice/login/loginForm.jsp" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/common/header.jsp" %>
	
	<!-- Google Font -->
	<%@ include file="/include/common/webfont.jsp" %>

	<!-- Css Styles -->
	<%@ include file="/include/common/css.jsp" %>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
		<%@ include file="/include/front/maingnb.jsp" %>
	<!-- Header Section End -->

	<!-- Breadcrumb Begin -->p" %>
	<!-- Breadcrumb End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">Have a coupon?</a> Click
					here to enter your code.</h1>
				</div>
			</div>
			<form action="#" class="checkout__form">
				<div class="row">
					<div class="col-lg-8">
						<h5>Billing detail</h5>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>First Name <span>*</span></p>
									<input type="text">
								</div>  
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>Last Name <span>*</span></p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__form__input">
									<p>Country <span>*</span></p>
									<input type="text">
								</div>  
								<div class="checkout__form__input">
									<p>Address <span>*</span></p>
									<input type="text" placeholder="Street Address">
									<input type="text" placeholder="Apartment. suite, unite ect ( optinal )">
								</div>
								<div class="checkout__form__input">
									<p>Town/City <span>*</span></p>
									<input type="text">
								</div>
								<div class="checkout__form__input">
									<p>Country/State <span>*</span></p>
									<input type="text">
								</div>
								<div class="checkout__form__input">
									<p>Postcode/Zip <span>*</span></p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>Phone <span>*</span></p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>Email <span>*</span></p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="checkout__form__checkbox">
									<label for="acc">
										Create an acount?
										<input type="checkbox" id="acc">
										<span class="checkmark"></span>
									</label>
									<p>Create am acount by entering the information below. If you are a returing
										customer login at the <br />top of the page</p>
									</div>
									<div class="checkout__form__input">
										<p>Account Password <span>*</span></p>
										<input type="text">
									</div>
									<div class="checkout__form__checkbox">
										<label for="note">
											Note about your order, e.g, special noe for delivery
											<input type="checkbox" id="note">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="checkout__form__input">
										<p>Oder notes <span>*</span></p>
										<input type="text"
										placeholder="Note about your order, e.g, special noe for delivery">
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="checkout__order">
								<h5>Your order</h5>
								<div class="checkout__order__product">
									<ul>
										<li>
											<span class="top__text">Product</span>
											<span class="top__text__right">Total</span>
										</li>
										<li>01. Chain buck bag <span>$ 300.0</span></li>
										<li>02. Zip-pockets pebbled<br /> tote briefcase <span>$ 170.0</span></li>
										<li>03. Black jean <span>$ 170.0</span></li>
										<li>04. Cotton shirt <span>$ 110.0</span></li>
									</ul>
								</div>
								<div class="checkout__order__total">
									<ul>
										<li>Subtotal <span>$ 750.0</span></li>
										<li>Total <span>$ 750.0</span></li>
									</ul>
								</div>
								<div class="checkout__order__widget">
									<label for="o-acc">
										Create an acount?
										<input type="checkbox" id="o-acc">
										<span class="checkmark"></span>
									</label>
									<p>Create am acount by entering the information below. If you are a returing customer
									login at the top of the page.</p>
									<label for="check-payment">
										Cheque payment
										<input type="checkbox" id="check-payment">
										<span class="checkmark"></span>
									</label>
									<label for="paypal">
										PayPal
										<input type="checkbox" id="paypal">
										<span class="checkmark"></span>
									</label>
								</div>
								<button type="submit" class="site-btn">Place oder</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
		<!-- Checkout Section End -->

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