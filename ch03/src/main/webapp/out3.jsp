<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="4kb"%>
<!-- buffer의 경우 디폴트값은 8KB, 설정해서 바꿀 수 있다! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=out.getBufferSize() %>
</body>
</html>