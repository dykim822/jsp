<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- 아래코드; Member member = new Member() -->
<jsp:useBean id="member" class="ch09.Member"></jsp:useBean>
<!-- 아래코드; id, password, name을 member객체에 setterMethod를 통해 저장 -->
<jsp:setProperty property="*" name="member"/>
<%	//singleton을 이용하여 객체 생성
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member);
	if(result > 0) { %>
<script type="text/javascript">
	alert("회원가입이 완료되었습니다");
	location.href = "loginForm.jsp";
</script>
<%  } else { %>
<script type="text/javascript">
	alert("회원가입에 실패하였습니다.");
	history.back();
</script>
<%	} %>
</body>
</html>