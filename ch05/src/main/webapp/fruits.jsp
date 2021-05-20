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
	list.add("산딸기"); list.add("집딸기"); list.add("판딸기");
	list.add("죽은딸기"); list.add("알칼리딸기");
	request.setAttribute("fruits", list);
	RequestDispatcher rd = request.getRequestDispatcher("fruitsResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>