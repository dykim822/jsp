<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 소개</h2>
<jsp:useBean id="member" class="ch06.Member" scope="request"></jsp:useBean>
ID : <jsp:getProperty property="id" name="member"/><p>
PWD : <jsp:getProperty property="pwd" name="member"/><p>
이름 : <jsp:getProperty property="name" name="member"/><p>
TEL : <jsp:getProperty property="tel" name="member"/><p>
</body>
</html>