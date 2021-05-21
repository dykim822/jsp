<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="ch06.Person" scope="request"></jsp:useBean>
<jsp:setProperty property="name" name="person" value='<%=request.getParameter("name") %>'/>
<jsp:setProperty property="age" name="person" value='<%=Integer.parseInt(request.getParameter("age")) %>'/>
<jsp:setProperty property="gender" name="person" value='<%=request.getParameter("gender") %>'/>
<jsp:forward page="personResult.jsp"></jsp:forward>
</body>
</html>