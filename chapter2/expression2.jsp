
<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Set<Integer> lotto = new HashSet<>();
	Random random = new Random();
	while(lotto.size() < 6) {
		int number = random.nextInt(45)+1;
		lotto.add(number);
	}
	
%>
<!-- HTML 주석 -->
<%-- JSP주석 --%>
< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression02</title>
</head>
<body>
	<h1>! 로또 번호 생성 프로그램 !</h1>
	
	<p>이번주 1등 예상 번호</p>
<!-- 	<p> -->
<!-- 		out.println(lotto);  -->
<!-- 	</p> -->
<%
	for(int number : lotto) {
		
	}
%>
<%
 	<%= number %>;	
%>
</body>
</html>