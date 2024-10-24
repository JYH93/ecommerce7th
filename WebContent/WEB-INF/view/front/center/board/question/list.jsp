<!-- html 설정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!-- JSP 파일이 위치한 경로 입력 -->
<%@ page info="/WEB-INF/view/front/center/board/question/list.jsp" %>
<!-- 이 부분은 필요에 따라 추가하는 것이 맞으므로 개별 판단에 따라 추가하거나 삭제해도 되고 사용하지 않더라도 그대로 넣어둬도 무방하다고 판단 -->
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"		uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/common/header.jsp" %>
	<style>
	.col-lg-12.col-md-12.col-sm-12 {padding-right:0;padding-left:0;}
	#searchWord {width:calc(100% - 149px);}
	
	@media (min-width: 1200px) {
			.header__menu::after {width:100%;}
		}
		@media (min-width: 992px) {
			.container, .container-lg, .container-md, .container-sm {max-width:100px;}
			#searchWord {width: 200px;}
		}

	</style>
	<script>
	
	<!-- 각 페이지의 기능에 따라 스크립트 추가 -->
	function goWriteForm() {
		
		document.getElementById("seq_bbs").remove();
		
		var frmMain = document.getElementById("frmMain");
		
		frmMain.action="/front/center/board/writeForm.web";
		frmMain.submit();
	}
	
	function goView(value) {

		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("seq_bbs").value = value;
		
		frmMain.action="/front/center/board/view.web";
		frmMain.submit();
	}
	function goList(value) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("searchWord").value = "";
		document.getElementById("currentPage").value = "1";
		document.getElementById("cd_bbs_type").value = value;
		
		frmMain.action = "/front/center/board/list.web";
		frmMain.submit();
	}
	function goPage(value) {
		
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("currentPage").value = value;
		
		frmMain.action="/front/center/board/list.web";
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
<input type="hidden" name="seq_bbs"		id="seq_bbs" />
<input type="hidden" name="a"		id="a" value="${paging.register}"/>
<input type="hidden" name="cd_bbs_type" id="cd_bbs_type" value="${paging.cd_bbs_type}" />
<input type="hidden" name="currentPage" id="currentPage" value="${paging.currentPage}" />
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

	<section class="shop spad">
		<div class="container">
			<div class="col-lg-12" style="padding: 0 !important;">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="checkout__form__input">
					<h6 style="text-align: center; letter-spacing: 1.5px; border: none; padding-bottom: 60px; font-size: 30px; font-weight: bold;">1:1 문의</h6>
					<h6 class="coupon__link" style=" border: none;">
			
					<c:if test="${paging.cd_bbs_type == 1}">
					<a href="javascript:goList(1);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #c7b199; border: 1px solid #cccccc; border-radius: 10px;">공지사항</a>
					<a href="javascript:goList(2);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">자주 찾는 질문(FAQ)</a>
					<a href="javascript:goList(3);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">1:1 문의</a>
					</c:if>

					<c:if test="${paging.cd_bbs_type == 2}">
					<a href="javascript:goList(1);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">공지사항</a>
					<a href="javascript:goList(2);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #c7b199; border: 1px solid #cccccc; border-radius: 10px;">자주 찾는 질문(FAQ)</a>
					<a href="javascript:goList(3);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">1:1 문의</a>
					</c:if>
					<c:if test="${paging.cd_bbs_type == 3}">
					<a href="javascript:goList(1);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">공지사항</a>
					<a href="javascript:goList(2);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #ffffff; border: 1px solid #cccccc; border-radius: 10px;">자주 찾는 질문(FAQ)</a>
					<a href="javascript:goList(3);" style="font-size: 15px !important; display: inline-block; padding: 10px 15px; color: black; background-color: #c7b199; border: 1px solid #cccccc; border-radius: 10px;">1:1 문의</a>
					</c:if>
					</h6>
					</div>
				</div>
				<br/>
				<!-- 세션에 로그인 정보가 있는지 확인 -->
				<c:if test="${not empty sessionUser}">
					<!-- 로그인 상태일 때만 보이는 영역 -->
					<div class="brdSearchArea">
						<div style="display: flex; justify-content: flex-end;margin-bottom: 10px;">
							<select name="searchKey">
								<option value="title"<c:if test="${paging.searchKey == 'title'}"> selected</c:if>>제목</option>
								<option value="contents"<c:if test="${paging.searchKey == 'contents'}"> selected</c:if>>내용</option>
								<option value="title+contents"<c:if test="${paging.searchKey == 'title+contents'}"> selected</c:if>>제목 또는 내용</option>
							</select>
							<input type="text" name="searchWord" id="searchWord" value="${paging.searchWord}" /> 
							<input type="submit" value="검색"/>
						</div>
					<!-- 게시글 목록 -->
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="brdInfo">전체 ${paging.totalLine}개 [${paging.currentPage}/${paging.totalPage} 페이지]</div>
								<table class="headTop_01" style=" margin-left: auto; margin-right: auto; width: 100%">
									<tr>
										<th style="width: 5%">NO</th>
										<th style="width: 18%">카테고리</th>
										<th>제목</th>
										<th style="width: 15%">작성자</th>
										<th style="width: 15%">등록일</th>
									</tr>
									<c:choose>
										<c:when test="${empty list}">
											<tr>
												<td colspan="6">등록된 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list">
												<tr>
													<td>
														${list.rnum}
													</td>
													<td>
														${list.ctg_nm}
													</td>
													<td style="text-align: left">
														<a href="javascript:goView(${list.seq_bbs});">
															<c:if test="${list.seq_reply == 0}">[미답변] </c:if>
															<c:if test="${list.seq_reply > 0}">[답변 완료] </c:if>
															${list.title}
														</a>
													</td>
													<td>
														${list.register}
													</td>
													<td>
														${list.dt_reg}
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</table>
								<div class="row">
									<br/>
									<div style="text-align: center; width: 100%; margin-top: 20px; color: black !important;" >
										<bravomylifeTag:page styleID="front_image" currentPage="${paging.currentPage}" linePerPage="${paging.linePerPage}" totalLine="${paging.totalLine}" scriptFunction="goPage" />
									</div>
									<br/>
									<br/>
									<br/>
									<!-- 문의 등록 버튼 -->
									<div style="width: 900px; margin-left: auto; margin-right: auto; text-align: center; margin-top: 30px;">
										<a href="/front/center/board/writeForm.web?cd_bbs_type=3" class="btnBasic" style="display: inline-block; padding: 10px 20px; background-color: #c7b199; color: black; border: 1px solid #cccccc; border-radius: 10px; text-decoration: none;">문의 등록</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 세션에 로그인 정보가 없을 때 -->
				<c:if test="${empty sessionUser}">
					<p style="text-align: center;">로그인이 필요합니다. 1:1 문의를 이용하시려면 로그인해주세요.</p>
				</c:if>
			</div>
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

</form>
</body>
</html>