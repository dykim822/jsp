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
<fmt:setLocale value="ko_kr"/>
<fmt:setBundle basename="intro"/>
<h2><fmt:message key="title"></fmt:message></h2>
<h2><fmt:message key="greet"></fmt:message></h2>
<h2><fmt:message key="body"></fmt:message></h2>
<h2><fmt:message key="company"></fmt:message></h2><br><br>

<fmt:setLocale value="en_us"/>
<fmt:setBundle basename="intro"/>
<h2><fmt:message key="title"></fmt:message></h2>
<h2><fmt:message key="greet"></fmt:message></h2>
<h2><fmt:message key="body"></fmt:message></h2>
<h2><fmt:message key="company"></fmt:message></h2><br><br>

<fmt:setLocale value="ja_jp"/>
<fmt:setBundle basename="intro"/>
<h2><fmt:message key="title"></fmt:message></h2>
<h2><fmt:message key="greet"></fmt:message></h2>
<h2><fmt:message key="body"></fmt:message></h2>
<h2><fmt:message key="company"></fmt:message></h2><br><br>
</body>
</html>