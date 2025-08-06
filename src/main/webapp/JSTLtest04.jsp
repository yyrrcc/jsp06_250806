<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Function 라이브러리 연습</title>
</head>
<body>

	<%
		String str = "Hello";
		out.println("[자바] 문자열 길이: " + str.length());
	%>
	
	<c:set var="str" value="Hello World" />
	<h4>[JSTL] 문자열의 길이: ${fn:length(str) }</h4>
	
	<c:set var="strArr" value="${['Kim', 'Choi', 'Park', 'Lee'] }" />
	<h4>문자 배열의 개수: ${fn:length(strArr) }</h4>
	
	<h4>대문자로 변경: ${fn:toUpperCase(str) }</h4>
	<h4>소문자로 변경: ${fn:toLowerCase(str) }</h4>
	
	<c:set var="str2" value="I Love You!" />
	<!-- 마지막 인덱스의 글자는 가져오지 않는다 -->
	<h4>앞 4글자(0,1,2,3) 추출: ${fn:substring(str2, 0, 4) }</h4>
	<h4>중간 5글자(4,5,6,7,8) 추출: ${fn:substring(str2, 4, 9) }</h4>
</body>
</html>