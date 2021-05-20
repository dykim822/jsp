<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Member> list = new ArrayList<>();
	list.add(new Member("철수", 22));
	list.add(new Member("영희", 27));
	list.add(new Member("민수", 24));
	list.add(new Member("영수", 31));
	request.setAttribute("list", list);
%>
<h2>나이 기준</h2>
오름차순 정렬 : ${list.stream().sorted((m1,m2)->m1.age.compareTo(m2.age)).toList() }<p>
내림차순 정렬 : ${list.stream().sorted((m1,m2)->m2.age.compareTo(m1.age)).toList() }<p><br>

<h2>이름 기준</h2>
오름차순 정렬 : ${list.stream().sorted((m1,m2)->m1.name.compareTo(m2.name)).toList() }<p>
내림차순 정렬 : ${list.stream().sorted((m1,m2)->m2.name.compareTo(m1.name)).toList() }<p>
</body>
</html>