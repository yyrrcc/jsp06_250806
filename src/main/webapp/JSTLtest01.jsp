<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL 라이브러리를 사용하겠다는 선언문 -->
<!-- tomcat 9.x 사용하면 java.sun.com 사용 -->
<!-- tomcat 10.x 사용하면 jakarta.tags.xx 사용 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
	<!-- 자바(?)랑 EL 표기법 -->
	<%
		String str = "Korea";
		request.setAttribute("kor", str);
	%>
	내가 태어난 국가는 <%= str %>입니다. <br/>
	내가 태어난 국가는 ${kor }입니다. <br/>
	
	<!-- JSTL 사용법 -->
    <c:set var="message" scope="page" value="Hello World!"/>
    메시지 : ${message} <br>
    <c:out value="${message}"/>

</body>
</html>