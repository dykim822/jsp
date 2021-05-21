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
	String name = request.getParameter("name");
	int num = Integer.parseInt(request.getParameter("num"));
	int sum = 0;
	for(int i=1; i<=num; i++) {
		sum += i;
	}
%>
이름 : <%=name %><p>
합계 : <%=sum %>
</body>
</html>