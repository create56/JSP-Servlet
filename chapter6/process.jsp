<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String reading = request.getParameter("reading");
	String exercise = request.getParameter("exercise");
	String movic = request.getParameter("movic");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>독서 : <%=reading %></p>
	<p>운동 : <%=exercise %></p>
	<p>영화 : <%=movic %></p>
</body>
</html>