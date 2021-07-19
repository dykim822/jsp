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
<c:if test="${empty newItem }">
	<tr><td>등록된 New Item이 존재하지 않습니다.</td></tr>
</c:if>
<c:if test="${not empty newItem }">
	<tr>
	<c:forEach var="product" items="${newItem }">
		<td>
			<ul>
				<li>상품 번호 : ${product.p_num }<br></li>
				<li>상품 이미지<p>
					<img alt="${product.p_image }" src="../../fileSave/${product.p_image }" width="132" height="132"><br></p></li>
				<li>상품명 :
					<a href="../productlist/ProductListDetail.do?num=${product.p_num }">${product.p_name}</a><br>
				<li>초기 가격 : 
					${product.p_price }원<br></li>
				<li>사용 여부 :
					${product.p_used }</li>
				<li>등록일 :
					${product.p_start_date} </li>
			</ul>
		</td>
	</c:forEach>
	</tr>
</c:if>
</table>
<br><br><br><br>
</body>
</html>