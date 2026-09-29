<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	공유영역에 객체 등록
	공유영역.setAttribute("이름", "값");
	
	공유영역 4가지 : pageCoontext, request, session, application
 --%>
 <%
 	pageContext.setAttribute("msg", "pageContext 공유영역에 등록");
 
 	//request영역에 "id"라는 이름으로 "홍길동" 등록
 	request.setAttribute("id", "홍길동");
 	
 	request.setAttribute("msg", "request 공유영역에 등록");
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	msg : ${ msg }<br>
	id : ${ id }<br>
	<%--
		JSP 공유영역 4가지: pageCoontext, request,      session,      application
		EL 공유영역 4가지 : pageScope,    requestScope, sessionScope, applicationScope
	 --%>
	request msg : ${ requestScope.msg }<br>
</body>
</html>