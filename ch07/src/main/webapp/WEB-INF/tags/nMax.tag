<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- rtexprvalue="false"; return expression value 리턴하는 값이 꼭 필요한 건 아니라는 의미 -->
<%@ attribute name="var" required="true" rtexprvalue="false" %>
<%@ attribute name="num1" required="true" type="java.lang.Integer" %>
<%@ attribute name="num2" required="true" type="java.lang.Integer" %>
<!-- name-from-attribute="var"; 최댓값 변수명을 임의로 사용할 때 사용/ alias; 가칭, 별칭 -->
<%@ variable name-from-attribute="var" alias="maximum" variable-class="java.lang.Integer"
			 scope="AT_END" %>
<%
	int result = 0;
	if(num1 > num2) {
		result = num1;
	} else {
		result = num2;
	}
%>
<c:set var="maximum" value="<%=result %>"></c:set>