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
<!-- scope="request"를 사용하면 setting한 변수를 다른 프로그램에서 사용가능 -->
<c:set var="plus" value="${param.num1 + param.num2 }" scope="request"></c:set>
<c:set var="minus" value="${param.num1 - param.num2 }" scope="request"></c:set>
<c:set var="multiply" value="${param.num1 * param.num2 }" scope="request"></c:set>
<c:set var="divide" value="${param.num1 / param.num2 }" scope="request"></c:set>
<jsp:forward page="set2Result.jsp"></jsp:forward>
</body>
</html>