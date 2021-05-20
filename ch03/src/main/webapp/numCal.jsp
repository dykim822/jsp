<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
난 중간 연산자야<p>
<%@ include file="info_directive.jsp" %>
<%	
	out.flush();	//현재 메모리 있는 것을 먼저 내보내고 실행; 난 중간연산자야 먼저 출력
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	request.setAttribute("pls", num1 + num2);
	request.setAttribute("mns", num1 - num2);
	request.setAttribute("mult", num1 * num2);
	request.setAttribute("div", num1 / num2);
	RequestDispatcher rd = request.getRequestDispatcher("numCalResult.jsp");
//	forward; 처리 결과를 넘긴다
//	rd.forward(request, response);
//	include; 처리 결과를 받아서 같이 출력
	rd.include(request, response);
%>
보여?
</body>
</html>