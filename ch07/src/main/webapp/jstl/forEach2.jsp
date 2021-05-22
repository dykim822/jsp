<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- items; 배열, list, set, map 데이터 받을 때 사용 -->
<c:forEach var="col" items="${color }" varStatus="v">
	<font color="${col }">야호 ${v.index } ${v.count } ${v.current }</font>
</c:forEach><p>
<c:forEach var="col" items="${color }">
	<c:forEach var="i" begin="1" end="7">
		<font color="${col }" size="${i }">야호</font>
	</c:forEach>
	<br>
</c:forEach><p>
<!-- 색깔별로 크기만 달라지게 출력 -->
<c:forEach var="i" begin="1" end="7">
	<c:forEach var="col" items="${color }">
		<font color="${col }" size="${i }">야호 </font>
	</c:forEach>
	<br>
</c:forEach>
<!-- 빨강일때1, 주황2, 노랑3, ..., 보라 7 -->
<c:forEach var="col" items="${color }" varStatus="v">
	<font color="${col }" size="${v.count }">야호 </font>
</c:forEach><p>
</body>
</html>