<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	response.sendRedirect("http://www.choongang.co.kr");
%> --%>
<!-- redirect는 위 자바코드 sendRedirect와 같은 기능을 한다 -->
<c:redirect url="http://www.naver.com"></c:redirect>
</body>
</html>