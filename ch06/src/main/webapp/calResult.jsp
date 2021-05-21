<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙연산 결과</h2>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum = num1 + num2;
	int sub = num1 - num2;
	int mult = num1 * num2;
	int div = num1 / num2;
%>
덧셈 : <%=num1 %> + <%=num2 %> = <%=sum %><p>
뺄셈 : <%=num1 %> - <%=num2 %> = <%=sub %><p>
곱셈 : <%=num1 %> * <%=num2 %> = <%=mult %><p>
나눗셈 : <%=num1 %> / <%=num2 %> = <%=div %><p>
<hr>
${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }<p>
${param.num1 } - ${param.num2 } = ${param.num1 - param.num2 }<p>
${param.num1 } * ${param.num2 } = ${param.num1 * param.num2 }<p>
${param.num1 } / ${param.num2 } = ${param.num1 / param.num2 }<p>
</body>
</html>