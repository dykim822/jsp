<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>좋아하는 영화</h2>
<%
	String[] movies = request.getParameterValues("movies");
	for(String m: movies) {
		out.println(m+"<p>");
	}
%>

<h2>좋아하는 영화</h2>
${paramValues.movies[0] }<p> ${paramValues.movies[1] }<p> ${paramValues.movies[2] }<p>
${paramValues.movies[3] }<p> ${paramValues.movies[4] }<p>
</body>
</html>