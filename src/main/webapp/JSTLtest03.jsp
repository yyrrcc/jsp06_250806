<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL for문 연습</title>
</head>
<body>
	<h3>[자바 for문]</h3>
	<%
		for (int i = 0; i < 3; i++) {
			out.println(i + "번 <br>");
		}
	%>
	
	<hr/>
	
	<h3>[JSTL for문]</h3>
		<c:forEach var="i" begin="0" end="5"> <!-- 0부터 5까지 다 찍힘 -->
			${i }		
		</c:forEach>
		
	<hr/>
	
	<h3>[JSTL for문 - i++ 변경, 문자열 출력]</h3>
		<c:forEach var="i" begin="0" end="10" step="2">
			<h6>안녕하세요 ${i }번</h6>			
		</c:forEach>
		
	<hr/>

	<h3>[JSTL for문 - 배열, 향상된 for문]</h3>
	<%
		String[] names = {"Jane", "Amy", "Olivia"};
		request.setAttribute("names1", names);
		
	%>
	<ul>
		<c:forEach var="name" items="${names1 }">
			<li>${name }</li>			
		</c:forEach>
	</ul>
	

</body>
</html>