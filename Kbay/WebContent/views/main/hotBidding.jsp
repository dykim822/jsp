<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td {
		border: 1px solid green;
	}
	ul li {
		list-style: none;
		align: center;
	}
</style>
</head>
<body>
<table>
<c:if test="${empty hotBidding }">
	<tr><td>경매 상품이 존재하지 않습니다</td></tr>
</c:if>
<c:if test="${not empty hotBidding }">
	<tr>
	<c:forEach var="product" items="${hotBidding }">
		<td>
			<ul>
				<li>상품 번호 : ${product.p_num }<br></li>
				<li>상품 이미지<p>
					<img alt="${product.p_image }" src="../../fileSave/${product.p_image }" width="132" height="132"><br></p></li>
				<li>상품명 :
					<a href="../productlist/ProductListDetail.do?num=${product.p_num }">${product.p_name}</a><br>
				<li>최고 가격 : 
					${product.a_price }원<br></li>
			</ul>
		</td>
	</c:forEach>
	</tr>
</c:if>
</table>
<br><br><br><br>
</body>
</html>