<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="/WEB-INF/taglibs/tool.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>작은 수 찾기</h2>
첫번째 수 : ${param.num1 }<p>
두번째 수 : ${param.num2 }<p>
작은 수 :
<t:nMin var="a" num2="${param.num2 }" num1="${param.num1 }"/>
${a }
</body>
</html>