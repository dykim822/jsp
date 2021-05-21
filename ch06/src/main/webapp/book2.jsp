<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 아래코드 의미는 Product product = new Book(); 와 같다 -->
<jsp:useBean id="product" class="ch06.Book" scope="request"></jsp:useBean>
<jsp:setProperty property="code" name="product" param="a01"/>
<jsp:setProperty property="name" name="product" param="노인과 바다"/>
<jsp:setProperty property="writer" name="product" param="헤밍웨이"/>
<jsp:setProperty property="price" name="product" param="20000"/>
<jsp:setProperty property="page" name="product" param="500"/>
<!-- 부모가 갖고 있는 메서드나 멤버변수만 활용 가능 -->
<jsp:forward page="product.jsp"></jsp:forward>
</body>
</html>