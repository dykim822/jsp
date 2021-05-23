<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	String sql = "delete from dept where deptno="+deptno;
	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root", "mysql");
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(sql);
		if(result > 0) { %>
<script type="text/javascript">
	alert("삭제되었습니다.");
	location.href = "select.jsp";
</script>					
<%		} else {
		out.println("삭제에 실패했습니다.");
		}
	} catch(Exception e) {
%>
<script type="text/javascript">
	alert("삭제에 실패하였습니다.");
	history.back();
</script>
<%	} finally {
		stmt.close();
		conn.close();
	}
%>
</body>
</html>