<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
연산 앞부분입니다.<hr>
<jsp:include page="calResult.jsp">
	<jsp:param value="5" name="num2"/>
</jsp:include><hr>
연산 뒷부분입니다.
</body>
</html>