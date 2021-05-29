<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch10.*"%>
<%@ include file="sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url("common.css");
</style>
<script type="text/javascript">
	function chk() {
		if(frm.password.value != frm.confirmPass.value) {
			alert("비밀번호가 일치하지 않습니다");
			frm.password.focus();
			frm.password.value="";
			return false;
		}
	}
</script>
</head>
<body>
<%	// 수정을 위해서는 조회를 먼저해야한다.
	MemberDao md = MemberDao.getInstance();
//	id는 sessionChk.jsp에서 읽어서 존재한다
	Member member = md.select(id);
	pageContext.setAttribute("member", member);
%>
<form action="update.jsp" method="post" name="frm" onsubmit="return chk()">
	<input type="hidden" name="id" value="${member.id }">
	<input type="hidden" name="name" value="${member.name }">
<table>
	<caption>회원정보 수정</caption>
	<tr>
		<th>아이디</th>
		<td>${member.id }</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="password" name="password" required="required" autofocus="autofocus">
		</td>
	</tr>
	<tr>
		<th>비밀번호 확인</th>
		<td>
			<input type="password" name="password" required="required">
		</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${member.name }</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>
			<input type="text" name="address" required="required" value="${member.address }">
		</td>
	</tr>
	<tr>
			<th>전화번호</th>
			<td>
				<input type="text" name="tel" required="required"
					title="형식 xxx-xxxx-xxxx" pattern="\d{3}-\d{3,4}-\d{4}"
					value="${member.tel }">
			</td>
		</tr>
		<tr>
			<th>가입일</th>
			<td>${member.reg_date }</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="확인">
				<input type="reset" value="초기화">
			</th>
		</tr>
</table>
</form>
</body>
</html>