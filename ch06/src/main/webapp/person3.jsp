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
<!-- 모든 속성에 대해 setter method 적용! -->
<jsp:setProperty property="*" name="person"/>
<jsp:forward page="personResult.jsp"></jsp:forward>
</body>
</html>