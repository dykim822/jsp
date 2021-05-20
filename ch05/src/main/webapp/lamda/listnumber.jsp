<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${vals = [20, 17, 30, 2, 9, 23] }<p>
최소값 : ${vals.stream().min().get() }<p>
최대값 : ${vals.stream().max().get() }<p>
오름차순 정렬 : ${vals.stream().sorted().toList() }<p>
내림차순 정렬 : ${vals.stream().sorted((x,y)->x<y?1:-1).toList() }<p>

</body>
</html>