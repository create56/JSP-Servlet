<%@page import="chapter4.Person"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="person" class="chapter4.Person"/>
<jsp:setProperty property="id" name="person" param="id"/>
<jsp:setProperty property= "name" name="person" value="이형진"/>

<%
// 이코드는 필요가 없다.
// 	String id = request.getParameter("id");
// 	String name = request.getParameter("name");
	
// 	person.setId(Integer.parseInt(id));
// 	person.setName(name);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디 : <%=person.getId()%></p>
	<p>이 름 : <%=person.getName()%></p>
</body>
</html>