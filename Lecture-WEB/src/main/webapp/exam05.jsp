<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b01 = new BoardVO(100, "반갑나나");
	BoardVO b02 = new BoardVO(200, "하이욘사");
	BoardVO b03 = new BoardVO(300, "쿠모린~");
	
	BoardVO[] boardArr = {b01, b02, b03};
	
	//공유영억 등록
	pageContext.setAttribute("boardList", boardArr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째 번호 : <%= boardArr[0].getNo() %><br>
	두번째 제목 : <%= boardArr[1].getTitle() %><br>
	<hr>
	첫번째 번호 : ${ boardList[0].no }<br>
	두번째 제목 :${ boardList[1].title }<br>
</body>
</html>