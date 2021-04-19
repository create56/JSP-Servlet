<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = "이형진";
	name = URLEncoder.encode(name, "UTF-8");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="exSecond.jsp">
		<jsp:param value="20210419" name="id"/>
		<jsp:param value="<%=name %>" name="name"/>
	</jsp:forward>
</body>
</html>