<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	BoardVO b = new BoardVO();
	b.setNo(100);
	b.setTitle("반갑나나");
	
	//공유영역 등록
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	번호 : ${ board.no }<br>
	제목 : ${ board.title }<br>
	작성자 : ${ board.writer }<br>
	<%-- 조회수 : ${ board.viewCnt }<br> --%>
	<hr>
	번호 : <%= b.getNo() %><br>
	제목 : <%= b.getTitle() %><br>
	작성자 : <%= b.getWriter() %><br>
</body>
</html>