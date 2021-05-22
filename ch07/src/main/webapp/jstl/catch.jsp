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
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
%>
<!-- catch; 에러가 발생하면 에러 내용을 변수e에 저장하고, 에러 처리는 하지 않는다.
			에러가 발생하지 않으면 e는 null값을 갖는다. -->
<c:catch var="e">
	<% int result = num1 / num2; %>
	나눗셈 결과 : <%=result %>
</c:catch>
<c:if test="${e != null }">
	에러메세지 : ${e.message }
</c:if>
</body>
</html>