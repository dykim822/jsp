<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	String sql = "insert into dept values(?,?,?)";
	Connection conn  = null;
	PreparedStatement pstmt = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root", "mysql");
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, deptno);
		pstmt.setString(2, dname);
		pstmt.setString(3, loc);
		int result = pstmt.executeUpdate();
		if(result > 0) { %>
<script type="text/javascript">
	alert("부서정보가 입력되었습니다.");
	location.href = "select.jsp";
</script>
<%		} else {
		out.println("입력 실패");
		}
	} catch(Exception e) {	%>
<script type="text/javascript">
	alert("이미 존재하는 부서입니다.");
	history.go(-1);
</script>
<%  } finally {
	pstmt.close();
	conn.close();
}
%>
</body>
</html>