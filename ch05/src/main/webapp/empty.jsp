<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${param.name }님 안녕하세요<p>
<!-- 이름을 입력하지 않았을 때 다른 문구를 출력하도록 -->
${empty param.name ? "손": param.name }님 안녕하세요!<p>
${not empty param.name ? param.name : "손" }님 안녕하세요!<p>
<%-- ${empty param.name ? "이름이 존재하지 않습니다" : param.name "님 안녕하세요!"} --%>
</body>
</html>