<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function priceChk() {
			if (!frm.newPrice.value) {
				alert("Bidding 가격을 입력하세요");
				frm.newPrice.focus();
				return false;
			}
			if ("${max_price}" >= frm.newPrice.value) {
				alert("현재 가격보다 더 큰 금액을 입력하세요");
				frm.newPrice.focus();
				return false;
			}
			
			if ((frm.newPrice.value)%1000 != 0) {
				alert("가격은 반드시 1000원 단위로 입력하세요");
				frm.newPrice.focus();
				return false;
			}
			
			frm.action = "../product/priceInsert.do";
			frm.submit();
			
		}
		function re_turn() {
			frm.action = "../product/productDetail.do";
			frm.submit();
		}
	</script>

</head>
<body>
	
	<h3>Bidding 참여</h3>
	<form name="frm" >
		<input type="hidden" name="a_id" value="${id }">
		<input type="hidden" name="p_num" value="${p_num }">
		<input type="hidden" name="gubun" value="${gubun }">
		<input type="hidden" name="pageNum" value="${pageNum }">
		 상품 현재가격 : ${max_price }원<p>
		 Budding 가격 : <input type="number" name="newPrice" required="required" autofocus="autofocus"><p>
		 <input type="submit" value="확인" onclick="priceChk()">
		 <input type="submit" value="취소" onclick="re_turn()">
		 <p>
		 <h5>※ 가격은 반드시 1000원 단위로 입력하세요.</h5>
	 </form>
</body>
</html>