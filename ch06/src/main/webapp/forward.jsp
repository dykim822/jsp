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
여기는 앞 내용<hr>
<jsp:forward page="forwardResult.jsp">
	<jsp:param value="50" name="num"/>	<!-- 이러면 계속 50만 출력된다 -->
</jsp:forward><hr>
아래 부분
</body>
</html>