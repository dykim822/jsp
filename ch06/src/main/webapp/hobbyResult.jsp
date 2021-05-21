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
	String hobby = request.getParameter("hobby");
%>
이름 : <%=name %><p>
<%-- <%=request.getParameter("name") %>위에 선언없이 바로 써도 상관없다 --%>
취미 : <%=hobby %><p>
</body>
</html>