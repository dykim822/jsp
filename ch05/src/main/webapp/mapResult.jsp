<%@page import="java.util.Iterator"%>
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
<h2>소개</h2>
이름 : ${map.name }<p>
나이 : ${map.age }<p>
취미 : ${map.hobby }<p>

<h2>소개</h2>
<%
	Map<String, String> map = (Map<String, String>)request.getAttribute("map");
	Iterator<String> it = map.keySet().iterator();
	String[] str = {"이름", "나이", "취미"};
	int i = 0;
	while(it.hasNext()) {	//스택처럼 쌓여있을 때 다음번에 읽을 데이터가 있는지 확인하는 메서드
		String key = it.next();
		out.println(str[i]+" : "+map.get(key)+"<p>");
		i++;
	}
%>
</body>
</html>