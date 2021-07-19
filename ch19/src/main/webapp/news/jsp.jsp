<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head><body>
<script type="text/javascript">
	$(function() {
		$('span[id]').addClass('spotlight');
		$('span[id="simpletext1"]').addClass('redtext');
		$('span[id!="simpletext1"]').addClass('bluetext');
		$('span[id^="complex"]').addClass('italictext');
		$('span[id$="text1"]').addClass('largetext');
		$('span[id*="text"]').addClass('box');
	});
</script>
	<span id="simpletext1">simple</span>
	<span class="simpletext2">jQuery</span>
	<span id="complextext1">basic</span>
	<span id="complextext2">example</span>
	<span id="complex">book</span>
</body></html>