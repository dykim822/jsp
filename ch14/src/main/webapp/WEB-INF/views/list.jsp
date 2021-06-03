<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- list.jsp를 views라는 폴더내부에 넣게 되면 외부에서 실행할 수 없다 -->
<!-- list.jsp를 webapp 밑에 존재하게 되면 실행은 되지만 출력은 되지 않는다 -->
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
<!-- 회원게시판은 이메일, 암호, ip사용 안함 -->
<table>
	<caption>게시글 목록</caption>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>이메일</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
<c:if test="${empty list }">
	<tr>
		<th colspan="6">게시글이 없습니다</th>
	</tr>
</c:if>
<c:if test="${not empty list }">
	<c:forEach var="board" items="${list }">
		<tr>
			<td>${number }<c:set var="number" value="${number - 1 }"></c:set></td>
			<c:if test="${board.del == 'y' }">
				<th colspan="5">삭제된 게시글 입니다</th>
			</c:if>
			<c:if test="${board.del != 'y' }">
				<!-- title: 마우스를 올려놓으면 본문 내용을 볼 수 있다 -->
				<td title="${board.content }">
					<c:if test="${board.re_level > 0 }">
						<!-- 들여쓰기 부분 -->
						<img alt="" src="images/level.gif" height="5"
							width="${board.re_level * 10 }">
						<img alt="" src="images/re.gif">
					</c:if>
					<a href="content.do?num=${board.num }&pageNum">${board.subject }</a>
					<c:if test="${board.readcount > 50 }">
						<img alt="" src="images/hot.gif">
					</c:if>
				</td>
				<td>${board.writer }</td>
				<td>${board.email }</td>
				<td>${board.reg_date }</td>
				<td>${board.readcount }</td>
			</c:if>
		</tr>
	</c:forEach>
</c:if>
</table><br>
<div align="center">
	<c:if test="${startPage > PAGE_PER_BLOCK }">
		<button onclick="location.href='list.do?pageNum=${startPage - 1 }'">[이전]</button>
	</c:if>
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<button onclick="location.href='list.do?pageNum=${i }'">${i }</button>
	</c:forEach>
	<c:if test="${endPage < totalPage }">
		<button onclick="location.href='list.do?pageNum=${endPage + 1 }'">[다음]</button>
	</c:if>
	<br>
</div>
<button onclick="location.href='writeForm.do?num=0&pageNum=1'">글쓰기</button>
</body>
</html>