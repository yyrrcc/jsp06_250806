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
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<title>장바구니 목록 확인</title>
</head>
<body>

	<%
		// 세션에 들어 있는 상품 목록을 가져오기
		List<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart");
	
		//
		request.setAttribute("cart", cart);
		
	%>

<!-- 장바구니가 비어 있을 경우에는 테이블 출력을 하지 않도록 해줘야 함 -->
<!-- ${cart == null } 이렇게 해주거나 ${empty sessionScope.cart } 해주거나 -->
		<c:choose>
			<c:when test="${cart == null }">
				장바구니에 아무 것도 없습니다.
				<br>
			</c:when>
			<c:otherwise>
				<h4>장바구니 목록</h4>
				<table>
					<tr>
						<th>번호</th>
						<th>상품종류</th>
						<th>색깔</th>
						<th>수량</th>
					</tr>
						<!-- for문이 진행될 때 마다 index값을 알려주는 장치 varStatus  -->
						<!--  c:set 이용해서 변수 0으로 설정하고 하나씩 증가시키는 방법도 있음 -->
						<!-- ${cart} 대신 ${sessionScope.cart} 넣어도 됨 -->
						<c:forEach var="c" items="${cart}" varStatus="status">
							<tr>
								<td>${status.index + 1}</td>
								<td>${c.product }</td>
								<td>${c.color }</td>
								<td>${c.quantity }</td>
							</tr>
						</c:forEach>
				</table>
				<br>
				<a href="removeCart.jsp">장바구니 비우기</a>
			</c:otherwise>
		</c:choose>

	<br>
	<a href="productList.jsp">상품 선택 페이지로 돌아가기</a>
</body>
</html>