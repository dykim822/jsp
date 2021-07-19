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
<c:set var="m_id" value="${sessionScope['m_id']}"></c:set>

<c:if test="${empty m_id}"> <!-- 로그인 되지 않은 경우 loginForm.do로 이동 -->
	<script type="text/javascript">
		location.href="AdminLoginForm.do";
	</script>
</c:if>
<%-- <c:if test="${not empty m_id}"> <!-- 로그인 되지 않은 경우 loginForm.do로 이동 -->
	${m_id } 대박 <p>
</c:if>
 --%>
<%-- <%
	String m_id = (String)session.getAttribute("m_id");
	if (m_id == null || m_id.equals("")) {
%> 
 		<script type="text/javascript">
			location.href="AdminLoginForm.do";
		</script>
<%
		return;
	}
%> --%>
</body>
</html>