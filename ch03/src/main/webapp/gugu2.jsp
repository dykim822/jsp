<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<form action="gugu2Result.jsp">
		<table>
			<caption>원하는 구구단을 선택하세요</caption>
			<tr>
				<th>구구단 단수</th>
				<td>
					<input type="radio" id="g2" name="dan" value="2" checked="checked">
					<label for="g2">2단</label><br>
					<input type="radio" id="g3" name="dan" value="3">
					<label for="g3">3단</label><br>
					<input type="radio" id="g4" name="dan" value="4">
					<label for="g4">4단</label><br>
					<input type="radio" id="g5" name="dan" value="5">
					<label for="g5">5단</label><br>
					<input type="radio" id="g6" name="dan" value="6">
					<label for="g6">6단</label><br>
					<input type="radio" id="g7" name="dan" value="7">
					<label for="g7">7단</label><br>
					<input type="radio" id="g8" name="dan" value="8">
					<label for="g8">8단</label><br>
					<input type="radio" id="g9" name="dan" value="9">
					<label for="g9">9단</label>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="확인">
				</th>
			</tr>
		</table>
	</form>
</body>
</html>