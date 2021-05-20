<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 에러 메시지가 512byte가 넘으면 에러 페이지를 보여주고, 그렇지 않으면 자체 에러 페이지를 보여준다. -->
<%	// 이 프로그램은 정상
	response.setStatus(200);
%>
	불편을 드려서 죄송합니다.<p>
	더 나은 서비를 위해 작업 중입니다.<p>
	<!-- exception; isErrorPage="true"일 경우에만 사용가능 -->
	<%=exception.getMessage() %>
</body>
</html>