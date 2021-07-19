<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		/* width:  100px; */
		height: 200px;
		/* border: 1px solid navy; */
		/* text-align: center; */
	}
</style>
<!-- <script type="text/javascript" src="../../js/jquery.js"></script> -->
<!-- <script type="text/javascript">
	$(function() {
		setInterval(() => {
			$('#ani').toggle({
				left: 100
			}, 'slow');
		}, 1000);
		
		$('#ani').click(function() {
			location.href="auction.do";
		});
	});
</script> -->
</head>
<body>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		setInterval(() => {
			$('#ani').toggle({
				left: 100
			}, 'slow');
		}, 1000);
		
		$('#ani').click(function() {
			location.href="auction.do";
		});
	});
</script>
	<div id="ani">경매마감 처리를 진행하고 있습니다...</div>
	
</body>
</html>