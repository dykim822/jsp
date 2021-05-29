<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch10.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="ch10.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<%
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member); 
	if (result > 0){
%>
<script type="text/javascript">
	alert("회원가입이 완료되었습니다");
	location.href="loginForm.jsp";
</script>
<%  } else { %>
<script type="text/javascript">
	alert("다시 입력하세요");
	history.go(-1);
</script>
<%  } %>
</body>
</html>