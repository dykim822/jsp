<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="product" class="ch06.Cloth" scope="request"></jsp:useBean>
<jsp:setProperty property="code" name="product" value="b01"/>
<jsp:setProperty property="name" name="product" value="원피스"/>
<jsp:setProperty property="size" name="product" value="44"/>
<jsp:setProperty property="price" name="product" value="100000"/>
<jsp:setProperty property="color" name="product" value="빨강"/>
<jsp:forward page="product.jsp"></jsp:forward>
</body>
</html>