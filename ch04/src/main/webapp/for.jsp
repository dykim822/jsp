<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
</head>
<body>
<h2>구구단</h2>
<table>
	<tr>
		<%	//for문은 보통 반복횟수를 알때 사용, while문은 반복횟수를 잘 모를때 사용
			for(int i=2; i<=9; i++) {
				out.println("<th>" + i + "단</th>");
			}
			out.println("</tr><tr>");
			for(int i=2; i<=9; i++) {
				if(i%2 == 0) {
					out.println("<td bgcolor='violet'>");
				} else {
					out.println("<td>");
				}
				for(int j=1; j<=9; j++) {
					out.println(i+" * "+j+" = "+ i*j +"<p>");
				}
				out.println("</td>");
			}
		%>
	</tr>
</table>
</body>
</html>