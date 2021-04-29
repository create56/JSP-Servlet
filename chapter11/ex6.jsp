<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int su1=0;
String su2=null;
	try {
		// 예외가 발생할 
		 Integer.parseInt(request.getParameter("su1"));
		 request.getParameter("su2");
	}catch(NumberFormatException e) {
		// 예외 처리
		RequestDispatcher dis = request.getRequestDispatcher("/nullPointer.jsp");
		dis.forward(request, response);
%>
	<h1>!NumberFormatException ! 발생</h1>
<%

	}
%>
		
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	su1 =Integer.parseInt(request.getParameter("su1"));
	su2 =request.getParameter("su2");
	
	if(su1 == 0 || su2 == null) {
%>
	<form action="#" method="GET">
		<p>수1 : <input type="text" name="su1"></p>
		<p>수2 : <input type="text" name="su2"></p>
		<input type="submit" value="전송">
	</form>
<%
	} else {

%>

	<%
// 	int su1_i = Integer.parseInt(su1);
	int su2_i = Integer.parseInt(su2);
	%>
	<p><%=su1 %> / <%=su2 %> = <%=su1 / su2_i %></p>
	<a href="./ex4.jsp">돌아가기</a>
		
<%
		
	}
%>
</body>
</html>