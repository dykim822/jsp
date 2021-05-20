<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%	// 위치와 관계없이 실행, request 내장변수(객체); 객체를 생성하지 않고 사용 가능
	String color = request.getParameter("color");
%>
<body bgcolor = "<%=color %>">
	
</body>
</html>