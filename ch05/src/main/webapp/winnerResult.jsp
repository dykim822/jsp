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
<h2>유명인</h2>
1등 : ${winners[0] } - 냉장고<p>
2등 : ${winners[1] } - TV<p>
3등 : ${winners[2] } - 라면 한박스<p>

<h2>유명인</h2>
<%
	String[] product = {"냉장고", "TV", "라면 한박스"};
	String[] winners = (String[])request.getAttribute("winners");
	for(int i = 0; i < winners.length; i++) {
		out.println((i+1)+"등 : "+winners[i]+" - "+product[i]+"<p>");
	}
%>
</body>
</html>