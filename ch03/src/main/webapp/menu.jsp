<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String menu = request.getParameter("menu");
%>
<jsp:include page="<%=menu %>"></jsp:include>
<jsp:include page="<%=menu %>"></jsp:include>
<!-- jsp:include는 실행한 결과를 갖고 온다 : 동적/ 중복해서 입력해서 에러 -->
</body>
</html>