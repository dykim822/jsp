<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="B_update.do" method="post" name="frm">
	<input type="hidden" name="b_num" value="${kboard.b_num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<table border="1">
		<caption>상세 내역</caption>
		<tr><th>번호</th><td>${kboard.b_num}</td></tr>
		<tr><th>제목</th>
			<td><input type="text" name="b_subject" value="${kboard.b_subject}"
					required="required" autofocus="autofocus"></td></tr>
		<tr><th>id</th><td>${kboard.id}</td></tr>
		<tr><th>내용</th>
			<td><pre><textarea rows="10" cols="30" name="b_content" 
			required="required">${kboard.b_content}</textarea></pre></td></tr>
		<tr><th colspan="2"><input type="submit"></th></tr>
	</table>
</form>
</body>
</html>