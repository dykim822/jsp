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
입력 숫자 : ${param.num }<p>
<!-- if문을 사용할 수 있지만 else는 사용할 수 없다! -->
<c:if test="${param.num > 0 }">
	${param.num }은 양수입니다.<p>
</c:if>
<c:if test="${param.num < 0 }">
	${param.num }은 음수입니다.<p>
</c:if>
<c:if test="${param.num == 0 }">
	${param.num }은 양수도 아니고 음수도 아닙니다.
</c:if>
</body>
</html>