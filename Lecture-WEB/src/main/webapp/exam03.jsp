<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
	String[] names = {"김야르", "최야르", "박야르", "남궁야르렁"};
	pageContext.setAttribute("nameList", names);
	pageContext.setAttribute("length", names.length);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" begin="0" end="${length-1}">
		${ nameList[i] }<br>
	</c:forEach>
	
	<c:forEach items="${ nameList }" var="name">
	${ name }<br>
	</c:forEach>
</body>
</html>