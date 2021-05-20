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
	for (int i = 1; i <= 100; i++) {
		sum += i;
	}
	/* pageContext; 같은 페이지 내에서 사용 */
	pageContext.setAttribute("sum", sum);
%>
<h2>1부터 100까지 합</h2>
${sum }
</body>
</html>