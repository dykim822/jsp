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
<h2>숫자 비교</h2>
첫번째 숫자 : ${param.num1 }<p>
두번째 숫자 : ${param.num2 }<p>
<!-- if문을 사용할 수 있지만 else는 사용할 수 없다! -->
<c:if test="${param.num1 - param.num2 > 0 }">
	${param.num1 }이 크다<p>
</c:if>
<c:if test="${param.num1 - param.num2 < 0 }">
	${param.num2 }이 크다<p>
</c:if>
</body>
</html>