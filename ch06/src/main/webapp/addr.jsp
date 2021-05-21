<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
요청 앞 내용입니다.<hr>
<jsp:include page="addrResult.jsp">
	<jsp:param value="철수" name="name"/>		<!-- 중간에 데이터 변경 가능 -->
</jsp:include><hr>
요청 아래 내용입니다.
</body>
</html>