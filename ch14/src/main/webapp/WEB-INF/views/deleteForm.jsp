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
<form action="delete.do" method="post">
	<input type="hidden" name="num" value="${num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
<table>
	<caption>게시글 삭제</caption>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="password" name="password" required="required" autofocus="autofocus">
		</td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="삭제"></th>
	</tr>
</table>
</form>
</body>
</html>