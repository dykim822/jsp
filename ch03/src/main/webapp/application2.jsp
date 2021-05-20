<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String real = application.getRealPath("WEB-INF/input");
	BufferedReader br = new BufferedReader(new FileReader(real));
//	BufferedReader br = new BufferedReader(new FileReader("WEB-INF/input"));
//	실제로 읽을 때는 realPath를 통해 읽어야 한다
	while(true) {
		String str = br.readLine();
		if(str == null) {
			break;
		}
		out.println(str + "<br>");
	}
	br.close();
%>
</body>
</html>