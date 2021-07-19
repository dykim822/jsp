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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk2() {
		if(frm.password.value != frm.confirmPass.value) {
			alert("비밀번호가 일치하지 않습니다");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	}
</script>
</head>
<body>
<!-- onsubmit="return chk2()": submit을 눌렀을 때 chk2를 먼저 실행하고 에러가 없으면 action update.jsp 실행
에러가 있으면 action 실행을 하지 않는다 -->
<form action="update.do" method="post" name="frm" onsubmit="return chk2()">
	<input type="hidden" name="id" value="${member.id }">
	<table>
		<caption>회원정보 수정</caption>
		<tr>
			<th>아이디</th>
			<td>${member.id }</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="password" required="required">
			</td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td>
				<input type="password" name="confirmPass" required="required">
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="name" required="required" value="${member.name }">
			</td>
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
					placeholder="010-1111-1111" value="${member.tel }">
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="확인">
				<input type="reset" value="초기화">
			</th>
		</tr>
	</table>
</form>
<button onclick="location.href='loginForm.do'">로그인</button>
</body>
</html>