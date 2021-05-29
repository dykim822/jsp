<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="${sessionScope.id }"></c:set>
<c:if test="${empty id }">
	<script type="text/javascript">
		location.href="loginForm.jsp";
	</script>
</c:if> --%>
<%-- <%@ include %>사용시 파일 통쨰로 갖고가서 컴파일하므로 중복되는 html코드는 삭제하는 게 좋다 --%>
<!-- 로그인하지 않는 사람들이 접근하지 못하는 jsp -->
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id.equals("")) {
		response.sendRedirect("loginForm.jsp");
		return;
	}
%>