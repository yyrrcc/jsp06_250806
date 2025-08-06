<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 패키지 가져오기 -->
<%@page import="jsp06_250806.dto.ProductDto" %>
<!-- JSTL 사용하기 위해서 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>장바구니 상품 추가</title>
</head>
<body>

	<!-- 
		1. 인코딩 세팅해주기(request.setCharacterEncoding)
		2. form에서 받아온 데이터들 가져오기(request.getParameter)
		3. ** 세션에 혹시 값이 있는지 없는지 먼저 확인 해야함 **
			따라서 세션에 값이 있으면 불러오기를 해야함 -> session 가져올 땐 getAttribute
			-> 이 값은 String 이기 때문에 보통 형변환을 해줘야 함
		4. ** 세션에 값이 없다면 (null이라면) 새로운 객체 생성 해주기 **
		5. 불러오거나 새로 생성한 다음에는 form에서 가져온 데이터를 객체에 add해주면 됨
		6. 세션을 생성시켜주기 setAttribute	
	 -->
	 
	<%
		request.setCharacterEncoding("UTF-8");
	
		// form에서 받아온 데이터 가져오기
		String product = request.getParameter("product");
		String color = request.getParameter("color");
		//String quantity = request.getParameter("quantity");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		// session에 이미 값이 저장되어 있는 경우에는 불러오기! 
		List<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart");

		// 만약에 세션에 값이 저장 되어 있지 않다면 -> 그 값이 null 이라면 -> 새로 배열을 만들어줘야 함
		if (cart == null) {
			cart = new ArrayList<ProductDto>();
		}
		// 
		cart.add(new ProductDto(product, color, quantity));
		session.setAttribute("cart", cart);
		
		// 하단에 EL을 써야 해서 가져오는 거 *************************************************
		request.setAttribute("product", new ProductDto(product, color, quantity));
	%>
	
	<h4>장바구니에
	${product.product }, ${product.color } ${product.quantity }개가 
	추가되었습니다.</h4>

	<a href="productList.jsp">상품 더 담기</a>
	<br/>
	<a href="viewCart.jsp">장바구니 보기</a>
	
</body>
</html>