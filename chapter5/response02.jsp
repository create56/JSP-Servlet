<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 지금 만든날짜를 표시한다면 System.currentTimeMillis() -->
	<%
		response.setHeader("Cache-control", "use_cache");
	
		response.setHeader("contentType", "text/html; charset=utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		response.setDateHeader("date", System.currentTimeMillis());
// 		response.setDateHeader("date", 1);
	%>
		Cache-control : <%=response.getHeader("cache-control") %>
		contentType : <%=response.getHeader("contentType") %>
		date : <%=response.getHeader("date") %>
</body>
</html>