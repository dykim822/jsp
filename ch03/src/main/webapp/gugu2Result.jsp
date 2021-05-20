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
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2>구구단 <%=dan %>단</h2>
<%
	for(int i = 1; i <= 9; i++) {
		out.println(dan + " * " + i + " = " + dan*i + "<p>");
	}
%>
</body>
</html>