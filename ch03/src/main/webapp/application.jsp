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
	String realPath = application.getRealPath("/");
	String stdPath = application.getContextPath();
	application.log("ouououououououououou");
%>
경로 : <%=stdPath %><p>
실제 경로 : <%=realPath %>
</body>
</html>