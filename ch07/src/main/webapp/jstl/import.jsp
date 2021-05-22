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
<!-- jsp:include와 유사한 역할 -->
<!-- param을 이용해 변수에 값을 전달할 수 있다 -->
<c:import url="gugu.jsp">
	<c:param name="num" value="9"></c:param>
</c:import>
</body>
</html>