<!-- 사칙연산 num1, num2 받아서 calResult.jsp에서 사칙연산 출력 -->
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
	<form action="calResult.jsp">
		<table>
			<caption>사칙연산</caption>
			<tr>
				<th>첫번째 숫자</th>
				<td>
					<input type="text" name="num1" required="required" autofocus="autofocus">
				</td>
				<th>두번째 숫자</th>
				<td>
					<input type="text" name="num2" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="확인">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>