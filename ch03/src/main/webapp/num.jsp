<!-- 10 ~ 100 숫자 입력받고 numResult.jsp에서 1부터 받은 숫자까지 합계 출력 -->
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
	<h2>숫자를 입력하세요</h2>
	<form action="numResult.jsp">
		<table>
			<caption>숫자 입력</caption>
			<tr>
				<th>숫자</th>
				<td>
					<input type="number" name="num" min="10" max="100" required="required" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="확인">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>