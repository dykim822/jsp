<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <c:set var="date" value="<%=new Date() %>"></c:set> --%>
<!-- 자바코드를 사용하지 않을 경우 아래와 같이 한다 -->
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
오늘 날짜 : ${date }<p>
<!-- fmt:formatDate default type; date -->
오늘 날짜 : <fmt:formatDate value="${date }" type="date"/><br>
현재 시간 : <fmt:formatDate value="${date }" type="time"/><br>
</body>
</html>