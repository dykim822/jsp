<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙 연산 결과</h2>
${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }<p>
${param.num1 } - ${param.num2 } = ${param.num1 - param.num2 }<p>
${param.num1 } * ${param.num2 } = ${param.num1 * param.num2 }<p>
<!-- 결과가 실수이고 num2의 0을 실수로 해서 아주 작은 값으로 인식한다
숫자를 아주 작은 값으로 나누면 무한대로 처리한다! -->
${param.num1 } / ${param.num2 } = ${param.num1 / param.num2 }<p>
<%	// 정수0으로는 나눌 수 없다!
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	out.println(num1+" + "+num2+" = "+(num1+num2)+"<p>");
	out.println(num1+" - "+num2+" = "+(num1-num2)+"<p>");
	out.println(num1+" * "+num2+" = "+(num1*num2)+"<p>");
	if(num2 != 0) {
		out.println(num1+" / "+num2+" = "+(num1/num2)+"<p>");
	}
%>
</body>
</html>