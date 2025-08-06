<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습2</title>
</head>
<body>
	<h3>[자바 사용]</h3>
	<%
		if (10 > 5) {
	%> <h4>10은 5보다 크다</h4>
	<%
		}
	%>
	
	<hr>
	
	<h3>[JSTL 사용 - if]</h3>
	<!-- 조건식 넣을 때 EL 표기법 사용해서 넣어주기 -->
		<c:if test="${20 > 5 }">
			<h4>20은 5보다 크다</h4>
		</c:if>
		
	<hr>
	
	<h3>[JSTL 사용 - if-else]</h3>
		<c:choose>
			<c:when test="${30 > 5 }">
				<h4>30은 5보다 크다</h4>
			</c:when>
			<c:otherwise>
				<h4>30은 5보다 작다</h4>
			</c:otherwise>
		</c:choose>
				
	<hr>
	
	<h3>[JSTL 사용 - if-elseif-else]</h3>
		<c:set var="score" value="85" /> <!-- 변수 선언 -->
		<c:choose>
			<c:when test="${score >= 90 }">
				<h4>90점을 넘었네요. A</h4>
			</c:when>
			<c:when test="${score >= 80 }">
				<h4>80점을 넘었네요. B</h4>
			</c:when>
			<c:when test="${score >= 70 }">
				<h4>70점을 넘었네요. C</h4>
			</c:when>
			<c:otherwise>
				<h4>70점 이하입니다. F</h4>
			</c:otherwise>
		</c:choose>
</body>
</html>