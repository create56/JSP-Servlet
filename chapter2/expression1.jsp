<%@page import="chapter2.BookInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%
		int count = 0;
		int a = 10;
		int b = 20;
		int c = 30;
	%>

<html>
<head>
<meta charset="UTF-8">
<title>Scripiting Tag</title>
</head>
<body>
	page Count is <%= ++count %> <br>
	<p>
		Today's date : <%= new java.util.Date() %>
	</p>
	<p>
		<%= a + b + c %>
	
	</p>
	<%
	 	chapter2.BookInfo bookInfo = new chapter2.BookInfo("도서", 123456 );
	
	%>
	<h1><%= bookInfo %></h1>
	<h2>name = <%= bookInfo.getName()%></h2>
	<h2>price = <%= bookInfo.getPrice() %></h2>
	
	<%! int number = 1; %>
	
	<%
		while(number <= 10) {
	%>
		<%= number %>
	<%
			number = number + 1;
		}
	%>
	
</body>
</html>