<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	private PrintWriter pw;
	public void jspInit() {
		try {
			pw = new PrintWriter(new FileWriter("c:/문서/SW국비교육/JSP/log.txt"));
		} catch(Exception e) {	}
	}
	public void jspDestroy() {
		if(pw != null) {
			pw.close();
		}
	}
%>
<%
	GregorianCalendar gc = new GregorianCalendar();
	String name = request.getParameter("name");
	pw.printf("%TF %TT %s님\n", gc, gc, name);
%>
안녕하세요 <%=name %> 님
</body>
</html>