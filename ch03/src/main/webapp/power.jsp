<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>거듭 제곱</h2>
2 ^ 1 = <%=power(2, 1) %><p>
2 ^ 2 = <%=power(2, 2) %><p>
2 ^ 3 = <%=power(2, 3) %><p>
2 ^ 4 = <%=power(2, 4) %><p>
2 ^ 5 = <%=power(2, 5) %><p>
2 ^ 6 = <%=power(2, 6) %><p>
2 ^ 7 = <%=power(2, 7) %><p>
2 ^ 8 = <%=power(2, 8) %><p>
<%!		// 매개변수 또는 메서드는 선언부를 통해 사용할 수 있다 "!"
	private int power(int x, int y) {
		int result = 1;
		for(int i = 0; i < y; i++) {
			result *= x;
		}
		return result;
	}
%>
</body>
</html>