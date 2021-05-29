<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// session 정보 삭제
	session.invalidate();
	// session.setMaxInactiveInterval(30*60); 30분지나면 session삭제
%>
<script type="text/javascript">
	alert("정상적으로 로그아웃 되었습니다");
	location.href="loginForm.jsp";
</script>
</body>
</html>