<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="ch06.Person" scope="request"></jsp:useBean>
<!-- value 대신 param을 이용하면 쉽다 -->
<jsp:setProperty property="name" name="person" param="name"/>
<jsp:setProperty property="age" name="person" param="age"/>
<jsp:setProperty property="gender" name="person" param="gender"/>
<jsp:forward page="personResult.jsp"></jsp:forward>
</body>
</html>