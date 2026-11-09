<%@page import="kr.ac.kopo.board.service.BoardServiceImpl"%>
<%@page import="kr.ac.kopo.board.service.BoardService"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

/* 
	 http://localhost:8080/Mission-WEB/board/detail.jsp?no=3 요청이 오면,
	 
	 1. 게시판번호 파라미터(no) 추출
	 2. 번호에 해당하는 게시글 조회
	 3. 조회된 게시글을 공유영역에 등록
*/	 

	String strNo = request.getParameter("no");
	int boardNo = Integer.parseInt(strNo);
	
	BoardService boardService = new BoardServiceImpl();
	BoardVO board = boardService.getBoardByNo(boardNo);
	
	pageContext.setAttribute("board", board);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr>
		<h2>상세페이지</h2>
		<hr>
		<table border="1" style="width: 80%;">
			<tr>
				<th style="width:25%;">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
	</div>	
</body>
</html>








