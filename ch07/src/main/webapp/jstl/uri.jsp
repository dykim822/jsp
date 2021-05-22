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
<%-- <c:url var="myUrl" value="http://www.naver.com"></c:url> --%>
<%-- <c:url var="myUrl" value="/jstl/gugu2.jsp"></c:url> --%>
<%-- <c:redirect url="${myUrl }"></c:redirect> --%>
<%-- <c:redirect url="/jstl/gugu2.jsp"></c:redirect> --%>
<!-- 각각의 경우의 출력을 비교해 볼 것 & 차이점 -->
<!-- url로 보낼지, redirect로 보낼지의 차이 -->


<!-- html에서 /는 http://ip번호:포트
redirect에서 /는 http://ip번호:포트/패키지(ch07) -->

<c:url var="url" value="gugu.jsp">
	<c:param name="num" value="7"></c:param>
</c:url>
<c:redirect url="${url }"></c:redirect>
</body>
</html>