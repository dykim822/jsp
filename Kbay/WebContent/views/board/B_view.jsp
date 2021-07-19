<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<caption>상세 내역</caption>
	<tr><th width="100">번호</th><td width="350">${kboard.b_num}</td></tr>
	<tr><th>제목</th><td>${kboard.b_subject}</td></tr>
	<tr><th>작성자</th><td>${kboard.id}</td></tr>
	<tr><th>내용</th><td>${kboard.b_content}</td></tr>
	<tr><th>조회수</th><td>${kboard.b_readcount}</td></tr>
	<tr><th>작성일</th><td>${kboard.b_reg_date}</td></tr>
</table>
<a href="B_list.do?pageNum=${pageNum}">목록</a>
<c:if test="${not empty id  or not empty m_id }">									
	<a href="B_updateForm.do?b_num=${kboard.b_num}&pageNum=${pageNum}">수정</a>
	<a href="B_delete.do?b_num=${kboard.b_num}&pageNum=${pageNum}">삭제</a>
	<c:if test="${m_id=='admin'}">
		<a href="B_insertForm.do?b_num=${kboard.b_num}&pageNum=${pageNum}">답변</a>
	</c:if>	
</c:if>
</body>
</html>