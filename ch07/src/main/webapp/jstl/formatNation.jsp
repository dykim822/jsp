<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<h2>우리나라</h2>
<!-- ko; 한국어(언어코드), kr; 한국(국가코드) -->
<fmt:setLocale value="ko_kr"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
날짜 : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br>

<h2>미국</h2>
<fmt:setLocale value="en_us"/>
<fmt:timeZone value="America/New_York">
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
날짜 : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br>
</fmt:timeZone>
<%-- <fmt:setTimeZone value="America/New_York"/>을 이용해도 된다!
timeZone은 범위 내에서만 유효/ setTimeZone은 setTimeZone를 이용하여 변경하기 전까지 유효 --%>

<h2>일본</h2>
<fmt:setLocale value="ja_jp"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
날짜 : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br>
</body>
</html>