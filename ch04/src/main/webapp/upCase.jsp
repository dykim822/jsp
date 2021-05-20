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
	/* 문자를 받아서 대문자로 변경 */	
	String name = request.getParameter("name").toUpperCase();
%>
이름 : <%=name %>
</body>
</html>