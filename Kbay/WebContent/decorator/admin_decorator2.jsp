<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="adminSession.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><deco:title></deco:title></title>
<style type="text/css">
	h2 {
		text-align: center;
		color: tomato;
	}
	#footer {
		text-align: center;
	}
		
	#menu { /* 메뉴 전체 영역에 대한 스타일 */
		list-style-type: none; /* 불릿 기호 없앰 */
		height: 40px; /* 내비게이션 높이 */
		padding: 6px 7px; /* 위아래 6px, 좌우 7px씩 안여백 */
		margin: 0; /* 바깥 여백 없음 */
		background: #FFC890; /* 내비게이션 전체 배경색 */
		border-radius: 1.5em; /* 모서리 둥글게 */

	}
	#menu li {/* 메뉴 각 항목에 대한 스타일 */
		float: left; /* 왼쪽부터 표시 */
		position: relative; /* 순서대로 표시 */
		margin: 5px 100px; /* 위아래 5px, 좌우 10px씩 바깥 여백 */
		padding: 0; /* 안여백 없음 */
	}
	#menu li a {/* 메뉴 항목에서도 링크에 대한 스타일 */
		display: block; /* 영역을 만듦 */
		font-family: "굴림"; /* 글꼴 */
		font-weight: 600; /* 진하게 */
		font-size: 1em; /* 글자크기 */
		padding: 10px 20px; /* 안여백 */
		color: #993800; /* 링크 글자색 */
		text-decoration: none; /* 밑줄 없앰 */
		margin: 0; /* 바깥 여백 없음 */
		border-radius: 1.4em; /* 링크의 모서리를 둥글게 */
		text-shadow: 0 1px 1px rgba(0,0,0,.3); /* 텍스트 그림자 */
	}
	#menu li:hover > a {/* 메뉴 항목 위로 마우스 올렸을 때 스타일 */
		background: #FFDF24; /* 배경색 */
		color: #DB3A00; /* 글자색 */
		text-shadow: 0 1px 1px rgba(255,255,255,1); /* 글자 그림자 */
		border-radius: 1.4em; /* 모서리 둥글게 */
	}
	#menu ul {/* 서브 메뉴 영역에 대한 스타일 */
		margin: 0; /* 서브 메뉴 바깥 여백 없음 */
		padding: 0; /* 서브 메뉴 안여백 없음 */
		list-style: none; /* 목록의 불릿 없앰 */
		position: absolute; /* 고정 위치에 표시 */
		left: 0; /* 부모 요소와 left 좌표 값은 같게 */
		top: 45px; /* 부모 요소로부터 아래로 45px 밑에 표시 */
		width: 150px; /* 서브 메뉴 너비 */
		background: #FFEE90; /* 서브 메뉴 배경색 */
		border: 1px solid #b4b4b4; /* 서브 메뉴 테두리를 그림 */
		border-radius: 8px; /* 모서리를 둥글게 처리 */
		box-shadow: 0 1px 3px rgba(0,0,0,.3);
		opacity: 0; /* 투명하게 표시 - 결국 평소엔 안보임 */
	}
	#menu li:hover ul {/* 메인 메뉴 위로 마우스 오버했을 때 서브 메뉴 스타일 */
		opacity: 1; /* 서브 메뉴 불투명해짐 -> 화면에 보임 */
	}
	#menu ul li {/* 서브 메뉴 각 항목의 스타일 */
		float: none; /* 세로로 표시 */
		margin: 0; /* 바깥 여백 없음 */
		padding: 0; /* 안 여백 없음 */
	}
	#menu ul a {/* 서브 메뉴 항목의 링크 스타일 */
		font-weight: normal; /* 진하기 보통으로 */
		text-shadow: 0 1px 0 #fff; /* 글자 그림자 */
		color: #333; /* 글자색 */
	}
</style>
</head>
<body>
<%
	String m_id = request.getParameter("m_id");
	m_id = "";
%>
<a href="../admin/AdminMain.do"><img alt="로고" src="admin_images/admin_kbaylogo.jpg"></a>
<%-- <c:if test="${ m_id == null || m_id == '' || id == 'null'}">
	<a href="../admin/AdminLoginForm.do">Login</a>
</c:if> --%>

<!-- <script type="text/javascript">
	alert("admin Session chk");
</script>
 -->
<!-- <script type="text/javascript">
		$(function() {
			$('ul:first').removeClass('menu');
		});
</script> -->
	
<c:if test="${ m_id == null || m_id.equals('')}">
	<a href="../admin/AdminLoginForm.do">Login</a>
</c:if>
<c:if test="${ m_id != null }">
	<a href="../admin/AdminLogout.do">Logout</a>
	
	<h2>Admin Page</h2>
	<ul id="menu">
	<li><a href="../main/Main.do">Kbay 메인</a>
	<li><a href="../admin/AdminProductListView.do?class_id1=A&class_id2=A1">Product</a>
		<ul>
			<li><a href="../admin/AdminProductListView.do?class_id1=A&class_id2=A1">여성의류</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=A&class_id2=A2">남성의류</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=A&class_id2=A3">액세서리</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=B&class_id2=B1">스마트홈</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=B&class_id2=B2">컴퓨터</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=B&class_id2=B3">핸드폰</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=C&class_id2=C1">피트니스</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=C&class_id2=C2">캠핑용품</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=D&class_id2=D1">코스매틱</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=D&class_id2=D2">건강식품</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=E&class_id2=E1">피규어</a></li>
			<li><a href="../admin/AdminProductListView.do?class_id1=E&class_id2=E2">빈티지</a></li>
		</ul>
	</li>
	<li><a href="../admin/AdminKnoticeList.do?pageNum=1">Notice</a></li>
	<li><a href="#">Q&A</a></li>
	</ul>
</c:if>


<hr>
<div id="body" align="center">
<deco:body></deco:body>
</div>
<div id="footer">
<hr>
	<p>서울 강남구 테헤란로 7길 Kbay Tel. 02-1234-5678 <br>
	Copyright ⓒ 2018 by Kbay, Design by Kbay
</div>
</body>
</html>