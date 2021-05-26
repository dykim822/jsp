<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	MemberDao md = MemberDao.getInstance();
	int result = md.check(id, password);
	if(result > 0) {
		Cookie cook = new Cookie("id", id);
		response.addCookie(cook);
		response.sendRedirect("main.jsp");
	} else if(result == 0) { %>
	<script type="text/javascript">
		alert("암호가 일치하지 않습니다.");
		history.back();
	</script>
<%  } else { %>
	<script type="text/javascript">
		alert("존재하지 않은 아이디입니다.");
		history.back();
	</script>
<%	} %>
</body>
</html>