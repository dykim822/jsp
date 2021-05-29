<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch10.*"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDao md = MemberDao.getInstance();
	int result = md.delete(id);
	if(result > 0) {
		session.invalidate(); %>
	<script type="text/javascript">
		alert("성공적으로 탈퇴되었습니다");
		location.href="loginForm.jsp";
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("탈퇴에 실패하였습니다");
		history.back();
	</script>
<%	} %>
</body>
</html>