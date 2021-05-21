<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch06.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 아래 코드는 Person person = new Person() 이 의미와 같다 -->
<jsp:useBean id="person" class="ch06.Person" scope="request"></jsp:useBean>
<!-- 아래 코드는 person.setName("홍길동"); 와 같은 의미 -->
<jsp:setProperty property="name" name="person" value="홍길동"/>
<jsp:setProperty property="age" name="person" value="22"/>
<jsp:setProperty property="gender" name="person" value="남자"/>
<jsp:forward page="personResult.jsp"></jsp:forward>

</body>
</html>