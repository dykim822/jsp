<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<String> list = new ArrayList<>();
	list.add("삼계탕"); list.add("토룡탕"); list.add("용봉탕"); list.add("탕수육");
	list.add("난자완스"); list.add("연포탕"); list.add("짬뽕탕");
	request.setAttribute("menu", list);
%>
<jsp:forward page="menuResult.jsp"></jsp:forward>
</body>
</html>