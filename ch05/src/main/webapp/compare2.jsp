<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>비교 결과</h2>
첫번째 문자 : ${param.str1 }<p>
두번째 문자 : ${param.str2 }<p>
<%-- ${param["str2"] } 문자는 이렇게 선언해도 똑같다 --%>
<!-- 대문자보다 소문자가 더 큰 걸로 인식한다 -->
큰 문자 : ${param.str1 > param.str2 ? param.str1 : param.str2 }<p>
<%-- ${param.str1 - param.str2 > 0 ? param.str1 : param.str2 } 문자라 연산 불가--%>
</body>
</html>