<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#result {
		width: 250px;
		height: 50px;
		margin: 30px;
		padding: 40px;
		text-align: center;
		
		border: 2px solid navy;
	}
</style>
</head>
<body>
	<div id="result">
		<h4>총 경매마감 대상 상품 수 : ${list_total }개</h4><p>
		<h4>총 경매처리 상품 수 : ${auct_total }개</h4>
	</div>
</body>
</html>