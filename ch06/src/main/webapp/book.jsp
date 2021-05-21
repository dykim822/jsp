<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>책 소개</h2>
제목 : 대지<p>
작가 : 미상<p>
내용 : 아무개 일가 이야기<p>
<!-- 액션태그는 실행 결과를 갖고 온다
include 지시자는 소스를 갖고 와서 같이 컴파일 한다(컴파일 과정에서 깨질 가능성) -->

<jsp:include page="copy.html"></jsp:include><br>	<!-- 동적 -->
<%@ include file="copy.html" %><br>	<!-- (정적) html은 한글이 깨진다 -->
<jsp:include page="copy.jsp"></jsp:include><br>	<!-- jsp는 깨지지 않는다 -->
<%@ include file="copy.jsp" %><br>
<!-- 지시자를 사용했을 때는 지시자에서 정의된 변수를 사용할 수 있다 -->
<%=a %>
</body>
</html>