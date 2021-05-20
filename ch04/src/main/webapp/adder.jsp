<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
</head>
<body>
<%
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		out.println(num1+ " + "+num2 + " = "+(num1+num2));
	} catch(NumberFormatException e) {
%>
<script type="text/javascript">
	alert("숫자가 아닙니다!");
	history.back();
</script>
<%		
	}
%>
</body>
</html>