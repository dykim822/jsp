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
<h2>개인 정보</h2>
<!-- 아래 코드들은 person.getName(), person.getAge(), person.getGender()와 같은 의미 -->
이름 : <jsp:getProperty property="name" name="person"/><p>
나이 : <jsp:getProperty property="age" name="person"/><p>
성별 : <jsp:getProperty property="gender" name="person"/><p>
</body>
</html>