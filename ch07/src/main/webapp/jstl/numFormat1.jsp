<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1000000<p>
<fmt:formatNumber value="1000000"/><p>
<fmt:formatNumber value="3.141592" pattern="#.###"></fmt:formatNumber><p>
<fmt:formatNumber value="1233.141592" pattern="#,###.##"></fmt:formatNumber><p>
<!-- 소숫점 2자리 이하면 생략 -->
<fmt:formatNumber value="1233.1" pattern="#,###.##"></fmt:formatNumber><p>
<!-- 소숫점 2자리까지 보여준다 -->
<fmt:formatNumber value="1233.1" pattern="#,###.00"></fmt:formatNumber><p>
<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><p>
<fmt:formatNumber value="123" type="currency"></fmt:formatNumber><p>
</body>
</html>