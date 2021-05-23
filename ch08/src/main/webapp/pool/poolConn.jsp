<%@page import="java.sql.Connection,javax.sql.*,javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	Context ctx = new InitialContext();
	/* java:comp/env/ 뒤에 context.xml에서 name부분만 붙이면 된다! */
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	/* DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/MySql"); */
	conn = ds.getConnection();
	if(conn != null) {
		out.println("연결 성공!");
		conn.close();
	} else {
		out.println("연결 실패!");
	}
%>
</body>
</html>