<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<font color="red" size="7">대박</font><p>
<!-- c:out은 html로 해석하지 않고 있는 그대로 출력한다 -->
<c:out value='<font color="red" size="7">대박</font'></c:out>
</body>
</html>