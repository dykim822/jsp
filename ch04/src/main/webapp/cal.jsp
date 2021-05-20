<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int add = num1 + num2;
	int subs = num1 - num2;
	int mult = num1 * num2;
	int div = num1 / num2;
%>
<h2>사칙 연산 결과</h2>
덧셈 : <%=num1 %> + <%=num2 %> = <%=add %><p>
뺄셈 : <%=num1 %> - <%=num2 %> = <%=subs %><p>
곱셈 : <%=num1 %> * <%=num2 %> = <%=mult %><p>
나눗셈 : <%=num1 %> / <%=num2 %> = <%=div %>
</body>
</html>