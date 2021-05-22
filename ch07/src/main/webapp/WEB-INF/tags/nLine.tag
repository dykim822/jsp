<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %>
<%@ attribute name="color" required="true" %>
<!-- type 속성의 default값은 String -->
<%@ attribute name="size" required="true" type="java.lang.Integer" %>
<font color="${color }">
<%
	for(int i=0; i<size; i++) {
		out.print("-");
	}
%>
</font><br>