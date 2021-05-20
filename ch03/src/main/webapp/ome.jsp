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
	<form action="omeResult.jsp" method="post">
		<table>
			<caption>오늘의 메뉴</caption>
			<tr>
				<th>음식 선택</th>
				<td>
					<select name="menu" multiple="multiple" size="4">
						<option>짜장<option>울면<option>짬뽕<option>만두
					</select>
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