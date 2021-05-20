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
${minMan = list.stream().min((m1,m2)->m1.age.compareTo(m2.age)).get();"" }
${maxMan = list.stream().max((m1,m2)->m1.age.compareTo(m2.age)).get();"" }
<h2>나이가 가장 많은 사람</h2>
이름 : ${minMan.name }<p>
나이 : ${minMan.age }<p><br>

<h2>나이가 가장 적은 사람</h2>
이름 : ${maxMan.name }<p>
나이 : ${maxMan.age }<p>
</body>
</html>