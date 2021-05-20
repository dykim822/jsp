<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// map<key,value>
	Map<String, String> map = new HashMap<>();
	map.put("name", "윤여정");
	map.put("age", "65");
	map.put("hobby", "웃기");
	request.setAttribute("map", map);
	RequestDispatcher rd = request.getRequestDispatcher("mapResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>