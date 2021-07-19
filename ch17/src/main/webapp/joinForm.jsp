<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	function chk() {
		if(!frm.id.value) {
			alert('아이디를 입력하세요');
			frm.id.focus();
			return false;
		}
// 변수 id에 입력한 id(from.id.value)를 담아서 post방식으로 confirm.jsp를 실행하고 결과를 받아서 data에 저장
// 그 데이터를 id가 err(id="err")인 곳에 html형식으로 넣어라
		$.post("confirm.do", "id="+frm.id.value, function(data) {
			$('#err').html(data);
		});
	}
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
<!-- onsubmit="return chk2()": submit을 눌렀을 때 chk2를 먼저 실행하고 에러가 없으면 action join.jsp 실행
에러가 있으면 action 실행을 하지 않는다 -->
<form action="join.do" method="post" name="frm" onsubmit="return chk2()">
	<table>
		<caption>회원가입</caption>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="id" required="required" autofocus="autofocus">
				<input type="button" value="중복체크" onclick="chk()">
				<div id="err"></div>
			</td>
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
				<input type="text" name="name" required="required">
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
				<input type="text" name="address" required="required">
			</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>
<!-- title="전화형식 3-3,4-4" : 에러가 발생하면 보여줄 메세지에 추가
pattern="\d{3}-\d{3,4}-\d{4}" : 숫자3-숫자3또는4-숫자4자리
placeholder="010-1111-1111" : 초기화면에 보여주고 데이터 입력 시 사라진다 -->
				<input type="text" name="tel" required="required"
					title="형식 xxx-xxxx-xxxx" pattern="\d{3}-\d{3,4}-\d{4}"
					placeholder="010-1111-1111">
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