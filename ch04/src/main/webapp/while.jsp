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
		<%	
			int i = 2, j = 1;
			while(i <= 9) {
				out.println("<th>"+i+"단</th>");
				i++;
			}
			out.println("</tr><tr>");
			i = 2;
			while(i <= 9) {
				if(i%2 == 0) {
					out.println("<td bgcolor='violet'>");
				} else {
					out.println("<td>");
				}
				while(j<=9) {
					out.println(i+" * "+j+" = "+ i*j +"<p>");
					j++;
				}
				out.println("</td>");
				i++;
				j = 1;
			}
		%>
	</tr>
</table>
</body>
</html>