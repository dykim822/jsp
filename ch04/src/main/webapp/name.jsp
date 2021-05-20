<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이름 입력</h2>
<!-- <form action="Greet"> -->
<form action="greet.jsp">
	<fieldset>
		<legend>이름</legend>
		<input type="text" name="name" required="required" autofocus="autofocus"><p>
		<input type="submit" value="확인">
	</fieldset>
</form>
</body>
</html>