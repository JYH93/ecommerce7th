<!-- html 설정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!-- JSP 파일이 위치한 경로 입력 -->
<%@ page info="/WEB-INF/view/front/center/board/question/view.jsp" %>
<!-- 이 부분은 필요에 따라 추가하는 것이 맞으므로 개별 판단에 따라 추가하거나 삭제해도 되고 사용하지 않더라도 그대로 넣어둬도 무방하다고 판단 -->
<%@ taglib prefix="fmt"					uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"					uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bravomylifeTag"		uri="/WEB-INF/tld/com.bravomylife.util.tld" %>
<!DOCTYPE html>
<html lang="kor">

<head>
	<%@ include file="/include/common/header.jsp" %>
	<style>

	</style>
	<script>
	
	<!-- 각 페이지의 기능에 따라 스크립트 추가 -->
	function download(type, sequence) {
		
		
		var frmMain = document.getElementById("frmMain");
		
		frmMain.type.setAttribute("value", type);
		frmMain.sequence.setAttribute("value", sequence);
		frmMain.action = "/front/center/board/download.web";
		frmMain.target = "frmBlank";
		frmMain.submit();
		
		frmMain.target = "_self";
		
	}
	function remove(value) {
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("cd_bbs_type").value = value;
		frmMain.action="/front/center/board/remove.web";
		frmMain.submit();
	}
	
	function modifyForm(value) {
		var frmMain = document.getElementById("frmMain");
		
		document.getElementById("cd_bbs_type").value = value;
		frmMain.action="/front/center/board/modifyForm.web";
		frmMain.submit();
	}
	
	function goList(value) {
		
		var frmMain = document.getElementById("frmMain");
		
		frmMain.cd_bbs_type.setAttribute("value", value);
		frmMain.action = "/front/center/board/list.web";
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
<input type="hidden" id="type"			name="type" />
<input type="hidden" id="sequence"		name="sequence" />
<input type="hidden" id="cd_bbs_type"	name="cd_bbs_type" />
<input type="hidden" id="seq_bbs"		name="seq_bbs"		value="${boardDto.seq_bbs}" />

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
<section class="blog-details spad">
	<div class="container">
		<div class="col-lg-12 col-md-6">
				<div class="blog__details__content">
					
					
					<br/>
					<br/>
					<br/>
					<div class="blog__details__item__title">
						<span class="tip" style="margin-left: 270px;">문의글 제목</span>
						<h4 style="margin-left: 270px;">${boardDto.title}</h4>
						<ul>
							<li><span style="margin-left: 270px; font-size: 16px;">[등록 일자]</span></li>
							<li style="font-size: 16px;">${boardDto.dt_reg}</li>
						</ul>
						<ul>
							<li><span style="margin-left: 270px; font-size: 16px;">[카테고리]</span></li>
							<li style="font-size: 16px;">
								<select id="cd_ctg" name="cd_ctg" disabled >
									<option value="0"<c:if test="${boardDto.cd_ctg == '0'}"> selected</c:if>>선택</option>
									<option value="1"<c:if test="${boardDto.cd_ctg == '1'}"> selected</c:if>>가입 및 탈퇴</option>
									<option value="2"<c:if test="${boardDto.cd_ctg == '2'}"> selected</c:if>>상품</option>
									<option value="3"<c:if test="${boardDto.cd_ctg == '3'}"> selected</c:if>>구매</option>
									<option value="4"<c:if test="${boardDto.cd_ctg == '4'}"> selected</c:if>>결제</option>
									<option value="5"<c:if test="${boardDto.cd_ctg == '5'}"> selected</c:if>>배송</option>
									<option value="6"<c:if test="${boardDto.cd_ctg == '6'}"> selected</c:if>>환불</option>
									<option value="9"<c:if test="${boardDto.cd_ctg == '9'}"> selected</c:if>>기타</option>
								</select>
							</li>
						</ul>
					</div>
					<br/>
					<br/>
					<div class="col-lg-9 col-md-9 col-sm-9">
					<div class="blog__details__quote" style="margin-left: 250px;">
						<p>${boardDto.content}</p>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="checkout__form__input">
				<p style="font-weight: bold; margin-bottom: 5px; font-size: 16px; margin-left: 235px;">
					<c:if test="${boardDto.file_orig != ''}">
						<a href="javascript:download('BbsQuestion', ${boardDto.seq_bbs});">[첨부파일 다운로드]</a>
					</c:if>
				</div>
			</div>
			<br/>
			<br/>
			<div style="width: 900px; margin-left: auto; margin-right: auto; text-align: center;">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="checkout__form__input" style="margin-left: 100px;">
				<c:if test="${boardDto.seq_reply == 0}">
					<input type="button" value="삭제" style="width:100px" onclick="javascript:remove(3);" />
					 <input type="button" value="수정" style="width:100px" onclick="javascript:modifyForm(3);" /> 
				</c:if>
					<input type="button" value="목록" style="width:100px" onclick="javascript:goList(3);"/>
				</div>
			</div>
			</div>
			</div>
			</div>
			</div>
	<!-- 답변 부분 추후 작업 
				<c:if test="${boardDto.seq_reply > 0}">
				<br/>
				<div style="color: #369; font-size: 10pt; font-weight: bold;">[답변]</div>
				<table class="headLeft_01" style="width: 900px; margin-left: auto; margin-right: auto">
					<tr>
						<th style="width: 150px;">제목</th>
						<td>
							${boardReplyDto.title}
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							${boardReplyDto.content}
						</td>
					</tr>
					<c:if test="${boardReplyDto.file_orig != ''}">
					<tr>
						<th>첨부 파일</th>
						<td>
							<a href="javascript:download('BbsQuestion', ${boardReplyDto.seq_bbs});">다운로드</a>
						</td>
					</tr>
					</c:if>
					<tr>
						<th>등록 일시</th>
						<td>
							${boardReplyDto.dt_reg}
						</td>
					</tr>
				</table>
			</c:if>
	 -->
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
<iframe name="frmBlank" id="frmBlank" width="0" height="0"></iframe>
</form>
</body>
</html>