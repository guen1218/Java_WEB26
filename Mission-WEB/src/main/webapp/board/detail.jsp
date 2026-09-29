<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //boardVO에서 만든 객체 불러와서 사용
    BoardVO b01 = new BoardVO(1, "11", "박르렁", "2026-09-07");
    BoardVO b02 = new BoardVO(2, "22", "최야르", "2026-09-07");
    BoardVO b03 = new BoardVO(3, "33", "르렁 야", "2026-09-06");
    BoardVO b04 = new BoardVO(4, "44", "아리사", "2026-09-07");

    // Borard 타입 list 생성
    BoardVO[] list = {b01, b02, b03, b04};
    /*
    http://loalhost:8080/Mission-WEB/board/detail.jsp?no=3 요청이 오면,
	
	게시판번호 파라미터(no)추출
	번호에 해당하는 게시글 조회
	조회된 게시글을 공유영역에 등록 >> 공유영역에 등록해서 추출하겠다
	*/
	
	// String > int로 변환 : Integer.parseInt(data);
	//String > double로 변환 : Double.parseDouble(data); ...
	String strNo = request.getParameter("no");
	int boardNo = Integer.parseInt(strNo);
	/* int boardNo = Integer.parseInt(request.getParameter("no")); */
	System.out.println("boardNo : " + boardNo);
	
	for(BoardVO board : list){
	 if(board.getNo() == boardNo){
	     pageContext.setAttribute("board", board);
	     break;
	 }
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <hr>
    <h2>상세페이지</h2>
    <hr>

    <table border="1">
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
            <th>작성일</th>
            <td>${ board.regDate }</td>
        </tr>
    </table>
</body>
</html>