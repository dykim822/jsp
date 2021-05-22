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
<!-- font크기는 7이 최대 -->
<c:forEach var="i" begin="1" end="10">
	<font size="${i }">야호</font><br>
</c:forEach>
<c:forEach var="i" begin="1" end="7" step="2">
	<font size="${i }">야호</font><br>
</c:forEach>
<c:forEach var="i" begin="1" end="7" varStatus="v">
	<font size="${i }">야호 ${v.count } ${v.index } ${v.current }</font><br>
</c:forEach>
count; 1부터 증가
index; 0부터 증가
current; 현재 값
</body>
</html>