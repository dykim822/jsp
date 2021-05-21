<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch06.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="ch06.Member" scope="request"></jsp:useBean>
<jsp:setProperty property="id" name="member" value="id"/>
<jsp:setProperty property="pwd" name="member" value="pwd"/>
<jsp:setProperty property="name" name="member" value="name"/>
<jsp:setProperty property="tel" name="member" value="tel"/>
<jsp:forward page="memberResult.jsp"></jsp:forward>
</body>
</html>