<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String password = request.getParameter("password");
	String pageNum = request.getParameter("pageNum");
	BoardDao bd = BoardDao.getInstance();
	int result = bd.delete(num, password);
	if(result > 0) { %>
	<script type="text/javascript">
		alert("삭제되었습니다");
		location.href="list.jsp?pageNum=<%=pageNum %>";
	</script>
<%	} else if(result == 0) { %>
	<script type="text/javascript">
		alert("삭제에 실패하였습니다");
		history.back();
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다");
		history.back();
	</script>
<%	} %>
</body>
</html>