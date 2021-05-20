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
	Cookie cookie = new Cookie("name", "kim");
	response.addCookie(cookie);
	RequestDispatcher rd = request.getRequestDispatcher("cookieView.jsp");
	rd.forward(request, response);
%>
</body>
</html>