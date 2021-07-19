<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/bootstrap.css">
</head>
<body class="pt-5">
<jsp:include page = "./topLayout.jspf" flush = "false"/>

<table>
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" name="own_id" required="required" autofocus="autofocus">
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="password" name="own_pwd" required="required">
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="확인"></th>
	</tr>
</table>
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
<jsp:include page = "./bottomLayout.jspf" flush = "false"/>
</body>
</html>
