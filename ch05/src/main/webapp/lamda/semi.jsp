<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${1 + 1 }<p>
${1 + 1; 10 + 10 }<p>	<!-- 세미콜론이 있으면 뒤에 것만 출력된다 -->
${var1 = 10; var1 }<p>
${var1; "" }	<!-- 아무것도 출력되지 않는다 -->
</body>
</html>