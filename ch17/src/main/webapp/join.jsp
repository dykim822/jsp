<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("회원가입 성공");
		location.href="loginForm.do";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("입력을 다시 해주세요");
		history.back();
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("이미 존재하는 id입니다");
		history.back();
	</script>
</c:if>
</body>
</html>