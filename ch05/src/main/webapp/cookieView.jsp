<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : ${cookie.name.value }<p>
이름 : ${cookie.name["value"] }<p>
이름 : ${cookie["name"].value }<p>
<!-- 모두 표현 가능 -->
</body>
</html>