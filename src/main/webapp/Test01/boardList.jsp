<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 패키지 가져오기 -->
<%@page import="jsp06_250806.dto.BoardDto" %>
<!-- JSTL 가져오기 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/styleboard.css" />
<title>게시판</title>
</head>
<body>
	<!-- 게시판 글 리스트 -->
	<%
		// 게시판 더미(dummy) 데이터 만들기
		List<BoardDto> boardList = new ArrayList<>(); // 게시글(BoardDto)를 여러개 담을 ArrayList 선언
		boardList.add(new BoardDto(1, "안녕하세요. 첫글입니다.", "김민지", "2025-08-01"));
		boardList.add(new BoardDto(2, "두번째 글이네요.", "박수영", "2025-08-02"));
		boardList.add(new BoardDto(3, "안녕하세요, 반갑습니다!", "최지선", "2025-08-03"));
		boardList.add(new BoardDto(4, "여름이네요. 날이 덥네요. 습한 게 싫어요. 벌레도 싫어요. 겨울이 좋아요.", "김민지", "2025-08-03"));
		boardList.add(new BoardDto(5, "새로 가입했어요.", "정한나", "2025-08-04"));
		
		request.setAttribute("boardList", boardList); // 불러와야 JSTL EL 쓸 수 있음
	%>
	<h2>자유 게시판 목록</h2>
	<hr/>
	<table>
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		
		<!-- items에는 배열, 리스트 같은 것들이 들어온다 -->
		<c:forEach var="boardDto" items="${boardList }">
			<tr>
				<td>${boardDto.num }</td>
				<td>
				<!--  글제목 길이가 너무 길 때 앞부분만 추출하는 것 -->
					<c:choose>
						<c:when test="${fn:length(boardDto.title) > 20}">
							<a href="#">${fn:substring(boardDto.title, 0, 20) }...</a>
						</c:when>
						<c:otherwise>
							${boardDto.title }
						</c:otherwise>
					</c:choose>
				</td>
				<td>${boardDto.writer }</td>
				<td>${boardDto.date }</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>