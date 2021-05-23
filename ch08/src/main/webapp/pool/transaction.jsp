<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String sql = "insert into dept values(21, '시험','서산')";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	Connection conn = ds.getConnection();
	conn.setAutoCommit(false);	//default는 true다!/ table 여러개를 입력/수정/삭제 시 이용
	Statement stmt = conn.createStatement();
	int result = stmt.executeUpdate(sql);
	if(result > 0) {
		out.println("입력 성공!");
		conn.commit();
	} else {
		out.println("입력 실패!");
		conn.rollback();
	}
	conn.setAutoCommit(true);
	stmt.close();
	conn.close();
%>
</body>
</html>