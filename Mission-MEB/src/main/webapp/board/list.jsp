<%@page import="org.apache.tomcat.jakartaee.commons.lang3.ArraySorter"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b01 = new BoardVO(1, "제목이다", "홍길동", "2026-09-07");     
	BoardVO b02 = new BoardVO(2, "크크크크", "홍길순", "2026-09-07");
	BoardVO b03 = new BoardVO(3, "배고프다", "홍길둥", "2026-09-07");
	
	BoardVO[] list = {b01, b02, b03};
	
	//공유영억 등록
	pageContext.setAttribute("boardList", list);
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
	<h2>전체게시글</h2>
	<hr>
	
	<table border="1" width="80%">
		<tr>
			<th width="7%">번호</th>
			<th>제목</th>
			<th width="23%">작성자</th>
			<th width="25%">등록일</th>
		</tr>
		<% for(int i=0; i<list.length; i++){ %>
		<tr>
			<td><%=list[i].getNo() %></td>
			<td><!-- /Mission-WEB/board/ -->
				<a href="/Mission-WEB/board/detail.jsp?no=<%= list[i].getNo() %>">
					<%=list[i].getTitle() %>
				</a>
			</td>
			<td><%=list[i].getWriter() %></td>
			<td><%=list[i].getRegDate() %></td>
		</tr>
		<% } %>
	</table>
	</div>
</body>
</html>