<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>현재 시간 : <%=LocalDateTime.now() %></p>
	<p>이 페이지는 5초마다 갱신됩니다</p>
	<%
	 	response.setIntHeader("Refresh", 5);
	%>
	<a href="www.google.com">Google 홈페이지로</a>
	
</body>
</html>