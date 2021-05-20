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
	<form action="Member.jsp" method="post">
		<table>
			<caption>회원가입</caption>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name" required="required" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" required="required">
				</td>
			</tr>
			<tr>
				<th>암호</th>
				<td>
					<input type="text" name="pwd" required="required">
				</td>
			</tr>
			<tr>
				<th>암호확인</th>
				<td>
					<input type="text" name="cofirmPwd" required="required">
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<input type="radio" name="gender" value="남자" id="m" checked="checked">
					<label for="m">남자</label><br>
					<input type="radio" name="gender" value="여자" id="g">
					<label for="g">여자</label>
				</td>
			</tr>
			<tr>
				<th>메일수신</th>
				<td>
					<input type="checkbox" name="mail" id="nt">
					<label for="nt">공지</label><br>
					<input type="checkbox" name="mail" id="ad">
					<label for="ad">광고</label><br>
					<input type="checkbox" name="mail" id="deliver">
					<label for="deliver">배송</label>
				</td>
			</tr>
			<tr>
				<th>직업</th>
				<td>
					<select name="job">
						<option>기타<option>회사원<option>수강생
					</select>
					<input type="text" name="job2">
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