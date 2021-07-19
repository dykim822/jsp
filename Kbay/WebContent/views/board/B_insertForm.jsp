<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="B_insert.do" method="post">
	<input type="hidden" name="b_num" value="${b_num}">
	<input type="hidden" name="b_ref" value="${b_ref}">
	<input type="hidden" name="b_re_level" value="${b_re_level}">
	<input type="hidden" name="b_re_step" value="${b_re_step}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="id" value="${id}">
<table border="1">
	<caption>게시글 입력</caption>
	<tr><th width="100">제목</th>
		<td width="350"><input type="text" name="b_subject"
			required="required" autofocus="autofocus"></td></tr>
	<tr><th>작성자</th>
		<td>${id}</td></tr>
	<tr><th>내용</th>
		<td><textarea rows="10" cols="50" name="b_content" required="required"></textarea></td></tr>
<!-- 	<tr><th>암호</th><td><input type="password" name="b_pass" required="required"></td></tr> -->
	<tr><th colspan="2"><input type="submit" value="확인">
		<input type="button" class="btn btn-default" value="뒤로가기" onclick="history.go(-1)"></th></tr>
	</table>
</form>
</body>
</html>