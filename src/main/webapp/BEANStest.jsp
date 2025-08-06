<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 자바빈즈 사용해서 자바 패키지 가져와서 id값이 들어간 객체가 하나 생성됨 -->
<jsp:useBean id="member" class="jsp06_250806.dto.MemberDto" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈 테스트</title>
</head>
<body>
	<jsp:setProperty property="id" name="member" value="Kimmj"/>
	<jsp:setProperty property="pw" name="member" value="123"/>
	<jsp:setProperty property="name" name="member" value="김민지"/>
	<jsp:setProperty property="age" name="member" value="20"/>
	
	<h4>학생 정보</h4>
	<ul>
		<li>아이디 : ${member.id }</li>
		<li>비밀번호 : ${member.pw }</li>
		<li>이름 : ${member.name }</li>
		<li>나이 : ${member.age }</li>
	</ul>
	<!-- 자바 코드에서 불러오려면 <%= member.getId() %> 이렇게 해줘야함 -->
</body>
</html>