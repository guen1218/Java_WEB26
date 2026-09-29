<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL 사용하기 위한 지시자 설정 --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값 cnt를 페이지콘텍스트에 설정<br>
	<c:set var="cnt" value="1" scope="page"/>
	
	${ pageScope.cnt }<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request"/>
	cnt : ${ cnt }<br>
	request cnt = ${ requestScope.cnt }<br>
	
	<c:remove var="cnt" />
	cnt : ${ cnt }<br>
	request cnt = ${ requestScope.cnt }<br>	
</body>
</html>