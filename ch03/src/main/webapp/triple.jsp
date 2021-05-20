<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- page 지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세 제곱 연산</h2>
1 ^ 3 = <%=triple(1) %><p>
2 ^ 3 = <%=triple(2) %><p>
3 ^ 3 = <%=triple(3) %><p>
4 ^ 3 = <%=triple(4) %><p>
5 ^ 3 = <%=triple(5) %><p>
<%!
	private int triple(int x) {
		int result = 1;
		for(int i = 0; i < 3; i++) {
			result *= x;
		}
		return result;	// return x*x*x;
	}
%>
</body>
</html>