<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form action="update.do" method="post" name="frm">
	<input type="hidden" name="writer" value="${board.writer }">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
<table>
	<caption>게시글 수정</caption>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" name="subject" value="${board.subject}"
				required="required" autofocus="autofocus">
		</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${board.writer }</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>${board.num }</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="password" name="password" required="required">
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<textarea rows="5" cols="40" name="content" required="required">${board.content }</textarea>
		</td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="수정"></th>
	</tr>
</table>
</form>
</body>
</html>