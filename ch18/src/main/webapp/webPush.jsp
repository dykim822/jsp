<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function push() {
		var es = new EventSource("push.action");
		es.addEventListener("message", function(event) {
			var disp = document.getElementById("disp");
			// event로 메세지에 넘어온 데이터 id가 disp인 곳에 html형식으로 display
			disp.innerHTML = event.data;
		});
	}
</script>
</head>
<body>
	<button onclick="push()">웹 Push Start</button>
</body>
</html>