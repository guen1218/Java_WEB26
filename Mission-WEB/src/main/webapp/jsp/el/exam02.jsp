<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	http://localhost:8080/Lecture-WEB/jsp/el/exam02.jsp?id=aaa&age=25 요청시 aaa 출력하는 코드
 --%>
 
<%
	String id = request.getParameter("id");
	
%>
	id : <%= id%><br>
	id : ${ param.id }<br>
	age: ${ param.age }<br>
</body>
</html>