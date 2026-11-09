<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.board.service.BoardService"%>
<%@page import="kr.ac.kopo.board.service.BoardServiceImpl"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<%
	// DB에서 전체게시글 조회
	BoardService boardService = new BoardServiceImpl();
	List<BoardVO> list = boardService.getBoardList();
	
	// 공유영역에 "boardList" 이름으로 등록
	pageContext.setAttribute("boardList", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    let goWrite = function() {
        location.href = "writeForm.jsp";
    }

    document.addEventListener('DOMContentLoaded', function(){
        let addBtn = document.getElementById("addBtn"); 
        
        addBtn.addEventListener('click', function(){
            location.href = 'writeForm.jsp';
        });
    });
    
    addBtn.addEventListener('click', function() {
        location.href = "writeForm.jsp";
    })
</script>
</head>
<body>
	<div align="center">
	<hr>
	<h2>전체게시글</h2>
	<hr>
	
	<table border="1" width="80%" >
		<tr>
			<th width="7%">번호</th>
			<th>제목</th>
			<th width="17%">작성자</th>
			<th width="17%">등록일</th>
		</tr>
		<c:forEach items="${ boardList }" var="board">
			<tr>
				<td>${ board.no }</td>
				<td>
					<a href="/Mission-WEB/board/detail.jsp?no=${board.no}">
						<c:out value="${ board.title }" />
					</a>
				</td>
				<td>${ board.writer }</td>
				<td>${ board.regDate }</td>
			</tr>
		</c:forEach>
		
	</table>
	<br>
	
	<button id="addBtn">새글등록</button>
	</div>
</body>
</html>