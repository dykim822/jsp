<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	if(num > 0) {
		out.println("입력한 숫자는 양수 " + num + "입니다");
	} else {
		out.println("입력한 숫자는 음수 " + num + "입니다");
	}
%>
</body>
</html>