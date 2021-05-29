<%@page import="ch10.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
<script type="text/javascript">
	function del() {
		// 확인을 체크하면 true, 취소를 체크하면 false
		var chk = confirm("정말로 탈퇴하시겠습니까?");
		if(chk) {
			location.href="delete.jsp";
		} else {
			alert("탈퇴가 취소 되었습니다");
		}
	}
	function chk() {
		var id = "<%=id %>";	// 자바스크립트에서 자바변수를 쓸때 큰따옴표로 처리해야 사용가능
		// 문자와 비교할 때 java equals()이지만 javaScript는 ==로 비교한다
		if(id != "master") {
			alert("목록조회 권한이 없습니다");
			return;
		} else {
			location.href="list.jsp";
		}
	}
</script>
</head>
<body>
<table>
	<caption>회원관리</caption>
	<tr>
		<th><button onclick="location.href='updateForm.jsp'">회원정보 수정</button></th>
	</tr>
	<tr>
		<th><button onclick="del()">회원 탈퇴</button></th>
	</tr>
	<tr>
		<th><button onclick="chk()">회원 목록</button></th>
	</tr>
	<tr>
		<th><button onclick="location.href='logout.jsp'">로그아웃</button></th>
	</tr>
</table>
</body>
</html>