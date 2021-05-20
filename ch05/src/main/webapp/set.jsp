<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
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
	Set<String> hobby = new HashSet<>();
	hobby.add("졸기"); hobby.add("자기"); hobby.add("웃기");
	request.setAttribute("hobby", hobby);
	RequestDispatcher rd = request.getRequestDispatcher("setResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>