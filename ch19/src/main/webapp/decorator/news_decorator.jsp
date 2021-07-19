<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.spotlight { background-color: #ff0}  .redtext { color: #f00}
	.bluetext { color: #00f}			  .largetext { font-size: 30pt}
	.italictext { font-style: italic}     .box { border: 3pt solid #f00}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
</head><body>
<a href="eco.jsp">경제</a> <a href="pol.jsp">정치</a>
<a href="soi.jsp">사회</a> <a href="exclude.jsp">기타</a>
<a href="jsp.jsp">jsp</a>
<hr>
<deco:body></deco:body>
<hr>
뉴스 다 뻥이여
</body>
</html>