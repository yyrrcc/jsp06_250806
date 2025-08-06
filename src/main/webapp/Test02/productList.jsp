<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 담아보기</title>
</head>
<body>
	<h2>상품을 선택하세요.</h2>
	<hr>
	<form action="addToCart.jsp">
		상품종류 :
		<select name="product">
			<option value="phone">스마트폰</option>
			<option value="laptop">노트북</option>
			<option value="ipad">아이패드</option>
			<option value="airpods">에어팟</option>
		</select>
		<br>
		상품색상 :
		<select name="color">
			<option value="black">검정</option>
			<option value="white">흰색</option>
			<option value="blue">파란색</option>
		</select>
		<br>
		상품수량 : <input type="number" name="quantity" value="1">
		<br/>
		<input type="submit" value="장바구니에 담기">
	</form>
	<hr>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>