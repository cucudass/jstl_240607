<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String number = request.getParameter("number");
	%>
	<c:set var="number" value="<%=number %>"/>
	<c:out value="${number }"/>
	<%-- 다중 조건문 --%>
	<c:choose>
		<%-- 조건이 참일 때 --%>
		<c:when test="${number % 2 == 0 }">
			<c:out value="${number }"/>은 짝수입니다.
		</c:when>
		<c:when test="${number % 2 == 1 }">
			<c:out value="${number }"/>은 홀수입니다.
		</c:when>
	</c:choose>
</body>
</html>