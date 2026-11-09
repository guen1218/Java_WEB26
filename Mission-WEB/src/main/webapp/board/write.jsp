<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.board.service.BoardService"%>
<%@page import="kr.ac.kopo.board.service.BoardServiceImpl"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%
	/*
		*** 작업 순서 ***
		1. 파라미터 추출(제목, 작성자, 내용)
		2. 추출된 데이터를 DB에 저장(t_board)
		3. 전체게시글 조회 페이지(list.jsp) 이동
	*/
%>
<%
	// 1.  파라미터 추출
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	 
	BoardVO newBoard = new BoardVO();
	System.out.println(title);
	System.out.println(writer);
	System.out.println(content);
	
	BoardService boardService = new BoardServiceImpl();
	boardService.addBoard(newBoard);
	
%>

<script>
	alert('새글등록이 완료되었습니다.')
	location.href = 'list.jsp'
</script>