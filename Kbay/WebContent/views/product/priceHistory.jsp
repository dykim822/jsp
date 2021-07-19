<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function re_turn() {
		frm.action = "productDetail.do";
		frm.submit();
	}
</script>
</head>
<body>
	<h3>상품 상세정보</h3>
	<form action="" name="frm">
		<input type="hidden" name="p_num" value="${p_num }">
		<input type="hidden" name="gubun" value="${gubun }">
		<input type="hidden" name="pageNum" value="${pageNum }">
		<table>
			<tr><td>
					<table>
						<tr><td><img alt="${p_image }" src="../../fileSave/${p_image }"></td></tr>
						<tr><th>상품명</th><td>${p_name }</td></tr>
						<tr><th>대분류</th><td>${p_class_name1 }</td></tr>
						<tr><th>소분류</th><td>${p_class_name2 }</td></tr>
					</table>
				</td>
				<td>
					<table border="1">
						<caption>가격 History</caption>
						<tr><th>등록일자</th><th>가격</th></tr>
						
						<c:if test="${empty list }">
							<tr><td colspan="2">등록된 경매 가격이 없습니다</td></tr>
						</c:if>
						
						<c:if test="${not empty list }">
							<c:forEach var="pInfo" items="${list }">
								<tr><td>${pInfo.a_reg_date }</td><td>${pInfo.a_price }</td></tr>
							</c:forEach>
						</c:if>
					</table>
					<p>
					<!-- <input type="submit" value="돌아가기" onclick="()"> -->
					<input type="submit" value="돌아가기" onclick="re_turn()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>