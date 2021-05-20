<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<h2>오늘의 메뉴 선택</h2>
<%
	String[] menu = request.getParameterValues("menu");
	if(menu == null) {
%>	
	메뉴를 선택하지 않았습니다!
<%
	} else {
		for(int i = 0; i < menu.length; i++) {
			if(i == menu.length - 1) {	// 마지막 데이터이면
				out.println(menu[i]);	// 생략
			} else {
				out.println(menu[i] + ", ");
			}
		}
	}
%>
</body>
</html>