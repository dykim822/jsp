<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../../sessionChk.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<caption>회원정보 보기</caption>
	<tr><th width="120">아이디</th><td width="240">${Kmember.id}</td></tr>
	<%-- <tr><th>비밀번호</th><td>${Kmember.pass}</td></tr> --%>
	<tr><th>이름</th><td>${Kmember.name}</td></tr>
	<tr><th>전화번호</th><td>${Kmember.tel}</td></tr>
	<tr><th>이메일</th><td>${Kmember.email}</td></tr>
	<tr><th>주소</th><td>${Kmember.addr}</td></tr>
	<tr><th>판매 패널티</th><td>${Kmember.sell_penalty}</td></tr>
	<tr><th>구입 패널티</th><td>${Kmember.buy_penalty}</td></tr>
	<tr><th>가입 날짜</th><td>${Kmember.reg_date}</td></tr>
	<!-- <tr><th colspan="2">　</th></tr> -->
	<tr><th colspan="2" align="center"><a href="updateForm.do">회원수정</a>　｜　<a href="../main/Main.do">메인으로 가기</a></th></tr>
</table>
</body>
</html>