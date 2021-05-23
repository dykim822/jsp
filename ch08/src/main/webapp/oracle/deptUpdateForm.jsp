<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,ch08.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("../common.css");
</style>
</head>
<body>
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from dept where deptno="+deptno;
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	Dept dept = new Dept();
	dept.setDeptno(deptno);
	dept.setDname(rs.getString("dname"));
	dept.setLoc(rs.getString("loc"));
	/* pageContext; 현재의 페이지에서만 사용 */
	pageContext.setAttribute("dept", dept);
	rs.close();
	stmt.close();
	conn.close();
%>
<form action="deptUpdate.jsp" method="post">
	<!-- 화면에 input tag가 출력되지는 않지만 데이터를 전달하기 위해 hidden 속성 사용 -->
	<input type="hidden" name="deptno" value="${dept.deptno }">
	<!-- 화면에 출력은 되지만 데이터를 수정할 수 없는 readonly 속성을 사용해도 된다 -->
	<!-- disable="disabled"는 수정도 안되고 값 전달도 되지 않는다 -->	
	<input type="number" name="deptno" value="${dept.deptno }" readonly="readonly">
<table>
	<caption>부서정보 수정</caption>
	<tr>
		<th>부서코드</th>
		<td>${dept.deptno }</td>	<!-- 수정불가하도록 설정 -->
	</tr>
	<tr>
		<th>부서명</th>
		<td>
			<input type="text" name="dname" required="required"
			 autofocus="autofocus" value="${dept.dname }">
		</td>
	</tr>
	<tr>
		<th>근무지</th>
		<td>
			<input type="text" name="loc" required="required" value="${dept.loc }">
		</td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="확인"></th>
	</tr>
</table>
</form>
</body>
</html>