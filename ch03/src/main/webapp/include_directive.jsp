<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>오늘의 메뉴</h2>
삼계탕<p>
추어탕<p>
토룡탕<p>
용봉탕<p>
<!-- include 지시자는 해당하는 소스를 가지고 와서 동시에 컴파일 : 정적 -->
<%@ include file="info_directive.jsp" %>
<!-- 다른 jsp파일을 불러올 때 사용 -->
</body>
</html>