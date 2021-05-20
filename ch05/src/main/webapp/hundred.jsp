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
	int sum = 0;
	for(int i = 1; i <= 100; i++) {
		sum += i;
	}
	/* 1~100까지 합계를 sum속성에 저장하여 hundredResult.jsp에 전달하고 실행 */
	request.setAttribute("sum", sum);
	RequestDispatcher rd = request.getRequestDispatcher("hundredResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>