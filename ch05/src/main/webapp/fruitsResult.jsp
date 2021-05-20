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
<h2>좋아하는 과일</h2>
${fruits[0] }<p>
${fruits[1] }<p>
${fruits[2] }<p>
${fruits[3] }<p>
${fruits[4] }<p>

<h2>좋아하는 과일</h2>
<%
	List<String> list = (List<String>)request.getAttribute("fruits");
	for(String fruit: list) {
		out.println(fruit+"<p>");
	}
%>
</body>
</html>