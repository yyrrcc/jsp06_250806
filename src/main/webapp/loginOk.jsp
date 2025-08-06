<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 로그인 확인</title>
</head>
<body>

	<% 
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		
		// 이렇게 다시 집어넣어줘야 EL 표기법을 사용할 수 있다
		request.setAttribute("elid", id);
		
		if (id.equals("admin") && pw.equals("123")) {
			session.setAttribute("user", id);
		} else {
			response.sendRedirect("login.jsp");
		}
		
	%>
	<h4>${sessionScope.user}님 환영합니다.</h4>
	<h4>반갑습니다 ${elid}님</h4> <!-- request로 넣어야지만 이렇게 사용 가능 -->

</body>
</html>