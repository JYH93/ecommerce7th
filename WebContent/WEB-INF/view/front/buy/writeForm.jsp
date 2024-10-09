<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ page info="/WEB-INF/view/front/buy/writeForm.jsp" %>
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"		uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/common/header.jsp" %>
	<script>
	function goTypeT(value, value2, value3, value4, value5) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("currentPage").value = "1";
		frmMain.type.setAttribute("value", value);
		frmMain.filter.setAttribute("value", value2);
		frmMain.corp_nm.setAttribute("value", value3);
		frmMain.prd_type.setAttribute("value", value4);
		frmMain.cd_ctg_m.setAttribute("value", value5);
		
		frmMain.action = "/front/sale/total_list.web";
		frmMain.submit();
	}
	
	function goTypeF(value, value2, value3, value4, value5) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("currentPage").value = "1";
		frmMain.type.setAttribute("value", value);
		frmMain.filter.setAttribute("value", value2);
		frmMain.corp_nm.setAttribute("value", value3);
		frmMain.prd_type.setAttribute("value", value4);
		frmMain.cd_ctg_m.setAttribute("value", value5);
		
		frmMain.action = "/front/sale/function_list.web";
		frmMain.submit();
	}
	
	function goTypeI(value, value2, value3, value4, value5) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("currentPage").value = "1";
		frmMain.type.setAttribute("value", value);
		frmMain.filter.setAttribute("value", value2);
		frmMain.corp_nm.setAttribute("value", value3);
		frmMain.prd_type.setAttribute("value", value4);
		frmMain.cd_ctg_m.setAttribute("value", value5);
		
		frmMain.action = "/front/sale/ingredient_list.web";
		frmMain.submit();
	}
	
	function goTypeG(value, value2, value3, value4, value5) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("currentPage").value = "1";
		frmMain.type.setAttribute("value", value);
		frmMain.filter.setAttribute("value", value2);
		frmMain.corp_nm.setAttribute("value", value3);
		frmMain.prd_type.setAttribute("value", value4);
		frmMain.cd_ctg_m.setAttribute("value", value5);
		
		frmMain.action = "/front/sale/gender_list.web";
		frmMain.submit();
	}
	
	function goWriteForm(value, value2, value3) {
		
		var frmMain = document.getElementById("frmMain");
		
		frmMain.seq_sle.setAttribute("value", value);
		frmMain.cd_ctg_m.setAttribute("value", value2);
		frmMain.cd_ctg_b.setAttribute("value", value3);
		frmMain.action="/front/buy/writeForm.web";
		frmMain.submit();
	}
	</script>

	<!-- Google Font -->
	<%@ include file="/include/common/webfont.jsp" %>

	<!-- Css Styles -->
	<%@ include file="/include/common/css.jsp" %>
</head>

<body>
<form id="frmMain" method="POST">
<input type="hidden" id="item" name="item" />

<input type="hidden" id="seq_sle"		name="seq_sle" />
<input type="hidden" id="sle_nm"		name="sle_nm" value="${saleDto.sle_nm}" />
<input type="hidden" id="price_sale"	name="price_sale" value="${saleDto.price_sale}" />
<input type="hidden" id="cd_ctg_m"		name="cd_ctg_m" />
<input type="hidden" id="cd_ctg_b"		name="cd_ctg_b" />
<input type="hidden" id="corp_nm"		name="corp_nm" value="${paging.corp_nm}"/>
<input type="hidden" id="prd_type"		name="prd_type" value="${paging.prd_type}"/>
<input type="hidden" id="filter"		name="filter" value="${paging.filter}"/>
<input type="hidden" id="type"			name="type" />
<input type="hidden" name="currentPage" id="currentPage" value="${paging.currentPage}" />
	
<input type="hidden" name="buyList[0].seq_sle" value="${saleDto.seq_sle}" />
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
	
	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6" style="display: flex; justify-content: center; align-items: center;">
					<div class="product__details__pic">
						<img data-hash="product-1" class="product__big__img" src="${saleDto.img}" alt="" style="width: 450px; height: 450px;">
					</div>
				</div>
				<div class="col-lg-6" style="padding-right: 0;">
					<div class="product__details__text">
						<h6 class="pd-main">${saleDto.sle_nm}</h6>
						<div class="product__details__widget">
							<div class="rating">
								<c:if test="${saleDto.average_rate == 0}">
									<i class="fa fa-star" style="color: #e0e0e0;"></i>
									<i class="fa fa-star" style="color: #e0e0e0;"></i>
									<i class="fa fa-star" style="color: #e0e0e0;"></i>
									<i class="fa fa-star" style="color: #e0e0e0;"></i>
									<i class="fa fa-star" style="color: #e0e0e0;"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
								<c:if test="${salDto.average_rate == 1}">
									<i class="fa fa-star"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
								<c:if test="${saleDto.average_rate == 2}">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
								<c:if test="${saleDto.average_rate == 3}">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
								<c:if test="${saleDto.average_rate == 4}">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
								<c:if test="${saleDto.average_rate == 5}">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i><span class="rate">${saleDto.count}개 상품평</span>
								</c:if>
							</div>
							<ul class="pd-ul">
								<li>
									<div>
									<span class="pd-title">원가</span>
										<label for="stockin" class="pd-label">
											<span class="pd-text"><fmt:formatNumber value="${saleDto.price_sale}" type="number" /></span>
											<span class="pd-text">원</span>
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">판매가</span>
										<label for="stockin" class="pd-label">
											<span class="pd-text" style="color: #ff4c2e !important;"><fmt:formatNumber value="${saleDto.discount_sale}" type="number" /></span>
											<span class="pd-text">원</span>
											<span class="pd-text" style="color: #ff4c2e !important;">(${saleDto.discount}%)</span>
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">적립 포인트</span>
										<label for="stockin" class="pd-label">
											<span class="pd-text">${saleDto.point_value}</span>
											<span class="pd-text">적립</span>
											<span class="pd-text" style="color: #346aff !important;">(${saleDto.point_stack}%)</span>
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">브랜드</span>
										<label for="stockin" class="pd-label">
											${saleDto.corp_nm}
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">제품타입</span>
										<label for="stockin" class="pd-label">
											${saleDto.prd_type}
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">재고</span>
										<label for="stockin" class="pd-label">
											${saleDto.count_stock}
										</label>
									</div>
								</li>
								<li>
									<div>
									<span class="pd-title">등록일</span>
										<label for="stockin" class="pd-label">
											${saleDto.dt_reg}
										</label>
									</div>
								</li>
							</ul>
						</div>
						</br>
						<div class="product__details__button">
							<div class="quantity">
								<span>구매 수량:</span>
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
							<a href="#" class="cart-btn"><span class="icon_bag_alt"></span> 장바구니에 담기</a>
							<ul>
								<c:choose>
									<c:when test="${saleDto.flg_like == 'Y'}">
										<li><a href="#" style="background-color: #ca1515;"><span class="icon_heart_alt" style="color: white;"></span></a></li>
									</c:when>
									<c:otherwise>
										<li><a href="#"><span class="icon_heart_alt"></span></a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-12 text-center">
					<div class="related__title">
						<h5 class="pd-h5">이런 상품은 어떠세요?</h5><h5 class=pd-subh5>지금 보고 계시는 상품과 관련된 상품들입니다.</h5>
					</div>
				</div>
				<div class="row" style="justify-content: center;">
				<c:forEach var="list" items="${list}">
					<div class="col-lg-3 col-md-6" style="padding: 0px !important;">
						<div class="product__item">
							<a href="javascript:goWriteForm('${list.seq_sle}', '${list.cd_ctg_b}', '${list.cd_ctg_m}');" style="display: flex; justify-content: center; align-items: center;">
								<div class="product__item__pic set-bg" data-setbg="${list.img}" style="width: 180px; height: 180px;">
								<c:if test="${list.flg_best != null && list.flg_best == 'Y'}">
									<div class="label new">베스트</div>
								</c:if>
								</div>
							</a>
							<div class="product__item__text">
								<h6 style="line-height: 1.5em; min-height: 3em;"><a href="#" style="font-size: 15px;">${list.sle_nm}</a></h6>
									<div class="rating">
										<c:if test="${list.average_rate == 0}">
											<i class="fa fa-star" style="color: #e0e0e0;"></i>
											<i class="fa fa-star" style="color: #e0e0e0;"></i>
											<i class="fa fa-star" style="color: #e0e0e0;"></i>
											<i class="fa fa-star" style="color: #e0e0e0;"></i>
											<i class="fa fa-star" style="color: #e0e0e0;"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
										<c:if test="${list.average_rate == 1}">
											<i class="fa fa-star"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
										<c:if test="${list.average_rate == 2}">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
										<c:if test="${list.average_rate == 3}">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
										<c:if test="${list.average_rate == 4}">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
										<c:if test="${list.average_rate == 5}">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i><span class="rate">${list.count}개 상품평</span>
										</c:if>
									</div>
								<c:choose>
									<c:when test="${list.discount == null || list.discount == 0}">
										<div class="product__price">
											<span style="text-decoration: none; font-size: 1.3em; color: black;">
												<fmt:formatNumber value="${list.price_sale}" type="number" />
											</span>원</div>
									</c:when>
									<c:otherwise>
										<div class="product__price">
											<span><fmt:formatNumber value="${list.price_sale}" type="number" /></span>
											 <span style="text-decoration: none; color : #ff4c2e">-${list.discount}%</span>
											 <span style="text-decoration: none; color: black; font-size: 1.3em">
											 	<fmt:formatNumber value="${list.discount_sale}" type="number" />
											 </span>원</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
				<div class="col-lg-12" style="padding: 0;">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품상세정보</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">리뷰 (${saleDto.count})</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품 Q&A</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
									<img src="${saleDto.desces}" alt="">
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="row">
									<div class="col-lg-12 col-md-12">
									<table class="headTop_01" style=" margin-left: auto; margin-right: auto; width: 100%">
									<c:choose>
										<c:when test="${empty reviewList}">
											<tr>
												<td colspan="4">등록된 리뷰가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${reviewList}" var="reviewList">
												<tr>
													<td>
														${reviewList.average_rate}
													</td>
													<td>
														${reviewList.rate_review}
													</td>
													<td>
														${reviewList.mbr_nm}
													</td>
													<td>
														${reviewList.dt_reg}
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
										</c:choose>
									</table>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<p>[TODO] 1대1 문의 게시판 코드 적용</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->

	<!-- Instagram Begin -->
	<!-- 페이지 하단 이미지가 나열 되는 곳 data-setbg="/img/instagram/insta-1.jpg" 이 부분을 우리 상품 이미지로 -->
	<%@ include file="/include/common/footerpic.jsp" %>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<%@ include file="/include/common/footer.jsp" %>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<%@ include file="/include/common/js.jsp" %>
</form>
</body>
</html>