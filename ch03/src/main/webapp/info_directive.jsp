<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="jsp테스트" import="java.util.GregorianCalendar"%>
<%-- <%@ page info="jsp 테스트" %> 이렇게 따로 빼서 써도 된다 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=getServletInfo() %><p>
<%
	GregorianCalendar gc = new GregorianCalendar();
	String date = String.format("%TF %TT", gc, gc);
%>
<%=date %>
</body>
</html>