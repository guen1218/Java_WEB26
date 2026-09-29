<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	10 + 5 = <%= 10 + 5 %><br>
	10 + 5 = ${ 10 + 5 }<br>
	10 % 3 = ${ 10 % 3}<br>
	10 mod 3 = ${ 10 mod 3}<br>
	10 eq 10 = ${10 eq 10 }<br>
	10 > 5 && 3 <= 8 : ${ 10 > 5 && 3 <= 8 }<br>
	10 gt 5 and 3 le 8 : ${ 10 gt 5 and 3 le 8 }<br>
	${ str }
	%{ 5 mod 2 eq 0 ? "짝수" : "홀수"}
</body>
</html>