<%@page import="ch10.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
</head>
<body>
<%
	String id = request.getParameter("id");
	MemberDao md = MemberDao.getInstance();
	int result = md.confirm(id);
	if(result > 0) {
		out.println("이미 존재하는 ID입니다");
	} else {
		out.println("사용 가능한 ID입니다");
	}
%>
</body>
</html>