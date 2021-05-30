<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,ch11.*"%>
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
<%
	String pageNum = request.getParameter("pageNum");
	final int ROW_PER_PAGE = 10;	// 한 페이지에 10개씩
	final int PAGE_PER_BLOCK = 10;	// 한 블럭에 10페이지
	if(pageNum == null || pageNum.equals("")) {
		pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	BoardDao bd = BoardDao.getInstance();
	int total = bd.getTotal();
	// 시작번호	(페이지번호 - 1) * 페이지당 개수 + 1
	int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
	// 끝번호		시작번호 + 페이지당개수 - 1
	int endRow = startRow + ROW_PER_PAGE - 1;
	List<Board> list = bd.list(startRow, endRow);
	// 번호를 보기 좋게 정렬
	int number = total - startRow + 1;
	int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE); 	// 총 페이지 수
	// 시작페이지	현재페이지 - (현재페이지-1) % 10
	int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
	int endPage = startPage + PAGE_PER_BLOCK - 1;
	if(endPage > totalPage) {
		endPage = totalPage;
	}
	pageContext.setAttribute("list", list);
%>
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
			<td><%=number-- %><%-- ${board.num } --%></td>
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
					<a href="content.jsp?num=${board.num }&pageNum">${board.subject }</a>
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
	<% if(startPage > PAGE_PER_BLOCK) { %>
		<button onclick="location.href='list.jsp?pageNum=<%=startPage - 1 %>'">[이전]</button>
	<% } %>
	<c:forEach var="i" begin="<%=startPage %>" end="<%=endPage %>">
		<button onclick="location.href='list.jsp?pageNum=${i }'">${i }</button>
	</c:forEach>
	<% if(endPage < totalPage) { %>
		<button onclick="location.href='list.jsp?pageNum=<%=endPage + 1 %>'">[다음]</button>
	<% } %>
	<br>
</div>
<button onclick="location.href='writeForm.jsp?num=0&pageNum=1'">글쓰기</button>
</body>
</html>