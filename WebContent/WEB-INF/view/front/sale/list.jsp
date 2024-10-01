<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/front/buy/list.jsp" %>
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"	uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/front/header.jsp" %>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

	<!-- Css Styles -->
	<%@ include file="/include/front/css.jsp" %>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
		<%@ include file="/include/front/leftgnb.jsp" %>

	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
		<%@ include file="/include/front/maingnb.jsp" %>

	<!-- Header Section End -->

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.html"><i class="fa fa-home"></i> Home</a>
						<span>Shop</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6 class="coupon__link">
						<a href="#" style="margin-left: 150px;margin-right: 150px;">낮은 가격순</a>
						<a href="#" style="margin-right: 150px;">높은 가격순</a>
						<a href="#" style="margin-right: 150px;">등록일 순</a>
					</h6>
				</div>
				<div class="col-lg-3 col-md-3">
					<div class="shop__sidebar">
						<div class="sidebar__categories">
							<div class="section-title">
								<h4>기 능 별</h4>
							</div>
							<div class="categories__accordion">
								<div class="accordion" id="accordionExample">
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseOne" href="#" style="color : black">혈당/혈행/혈압</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseTwo" href="#" style="color : black">황산화/면연력</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseThree" href="#" style="color : black">염증/항염</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFour" href="#" style="color : black">관절/뼈/치아</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFive" href="#" style="color : black">피로회복</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFour" href="#" style="color : black">눈 건강</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFour" href="#" style="color : black">장 건강</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFour" href="#" style="color : black">두뇌/기억력</a>
										</div>
									</div>
									<div class="card">
										<div>
											<a data-toggle="collapse" data-target="#collapseFour" href="#" style="color : black">위/간/갑상선</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<!-- 상품 이미지 칸 -->
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-1.jpg">
									<div class="label new">New</div>
									<ul class="product__hover">
										<!-- 상품에 커서가 있을시 출력되는 팝업 칸 -->
										<li><a href="img/shop/shop-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Furry hooded parka</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-2.jpg">
									<ul class="product__hover">
										<li><a href="img/shop/shop-2.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Flowy striped skirt</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 49.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-3.jpg">
									<ul class="product__hover">
										<li><a href="img/shop/shop-3.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Croc-effect bag</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-4.jpg">
									<ul class="product__hover">
										<li><a href="img/shop/shop-4.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Dark wash Xavi jeans</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item sale">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-5.jpg">
									<div class="label">Sale</div>
									<ul class="product__hover">
										<li><a href="img/shop/shop-5.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Ankle-cuff sandals</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 49.0 <span>$ 59.0</span></div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-6.jpg">
									<ul class="product__hover">
										<li><a href="img/shop/shop-6.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Contrasting sunglasses</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-7.jpg">
									<ul class="product__hover">
										<li><a href="img/shop/shop-7.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Circular pendant earrings</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-8.jpg">
									<div class="label stockout stockblue">Out Of Stock</div>
									<ul class="product__hover">
										<li><a href="img/shop/shop-8.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Cotton T-Shirt</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 59.0</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="product__item sale">
								<div class="product__item__pic set-bg" data-setbg="/img/shop/shop-9.jpg">
									<div class="label">Sale</div>
									<ul class="product__hover">
										<li><a href="img/shop/shop-9.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
										<li><a href="#"><span class="icon_bag_alt"></span></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6><a href="#">Water resistant zips backpack</a></h6>
									<div class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</div>
									<div class="product__price">$ 49.0 <span>$ 59.0</span></div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 text-center">
							<div class="pagination__option">
								<a href="#">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
								<a href="#"><i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

	<!-- Instagram Begin -->
	<!-- 페이지 하단 이미지가 나열 되는 곳 data-setbg="/img/instagram/insta-1.jpg" 이 부분을 우리 상품 이미지로 -->
	<div class="instagram">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg" data-setbg="">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i>
							<a href="#">우리 상품 이미지</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<div class="footer__copyright__text">
						<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
					</div>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<%@ include file="/include/front/js.jsp" %>
	
</body>

</html>