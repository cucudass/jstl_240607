<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>fn:split => 문자열을 공백으로 나누어서 배열형태로 texts로 받는다.</p>
	<c:set var="texts" value="${fn:split('Hello, java Server Pages!', ' ') }"/>
	<p>texts 배열 크기만큼 반복</p>
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
		<p>
			texts[${i}] = ${texts[i] }
		</p>
	</c:forEach>
	<p>
		fn:join => 구분자로 연결
		<c:out value="${fn:join(texts, '-') }"/>
	</p>
</body>
</html>