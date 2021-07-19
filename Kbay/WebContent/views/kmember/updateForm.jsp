<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// pass 체크
	function passConfirm() {
		if (frm.pass.value != frm.newpass.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.pass.focus();	
			return false;
	// 실패했을때 return
		}
	}
</script>
</head>
<body>
<form action="update.do" method="post" name="frm" onsubmit="return passConfirm()">
	<input type="hidden" name="id" value="${Kmember.id}">
		<table border="1">
		<caption>회원정보 수정</caption>
			<tr><th width="120">아이디</th><td width="200">${Kmember.id}</td></tr>
			<tr><th>비밀번호</th>
				<td><input type="password" name="pass" required="required" autofocus="autofocus"></td></tr>
			<tr><th>비밀번호확인</th>
				<td><input type="password" name="newpass" required="required"></td></tr>
			<tr><th>이름</th><td><input type="text" name="name" required="required" value="${Kmember.name}"></td></tr>
			<tr><th>이메일</th><td><input type="text" name="email" required="required" value="${Kmember.email}"></td></tr>
			<tr><th>전화</th><td>${Kmember.tel}</td></tr>
			<tr><th>주소</th><td><input type="text" name="addr" required="required" value="${Kmember.addr}"></td></tr>
			<tr><th colspan="2">
			<input type="submit" value="수정완료"></th></tr>
			<tr><th colspan="2" align="center"><a href="../main/Main.do">메인으로 가기</a>
			　|　<a href="../login/delete.do?id=${Kmember.id}" onclick="return confirm('탈퇴하시겠습니까?')">탈퇴하기</a></th></tr>
		</table>
</form>
</body>
</html>