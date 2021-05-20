<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1부터 10까지 합</h2>
<!-- 기존 out.jsp처럼 스크립틀릿을 반복하는 번거러움을 덜기위한 방법 -->
<% 
	int sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
		/* out; 자바코드 안에 html표시 */
		out.println(i + "까지 합계 : " + sum + "<p>");
	}	
%>
<%=sum %>
</body>
</html>