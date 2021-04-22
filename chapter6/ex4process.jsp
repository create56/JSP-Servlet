<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id"); 	

	String password = request.getParameter("password"); 	//비밀번호
	String password2 = request.getParameter("password2");
	
	String name= request.getParameter("name");		
		
	String phone1 = request.getParameter("phone1");	
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	
	String gender = request.getParameter("gender");
	
// 	String hobby1 = request.getParameter("hobby1");
// 	String hobby2 = request.getParameter("hobby2");
// 	String hobby3 = request.getParameter("hobby3");
	
	String[] hobby = request.getParameterValues("hobby"); 	//취미()
	System.out.println("hobby = " + hobby);
	String hobbys = "";
	for(String h : hobby) {
		hobbys +=(h+",");
	}
	String comment = request.getParameter("comment");   	//가입인사
	comment = comment.replace("\n","<br>");
	System.out.println(comment);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong>아이디 : </strong><%=id %></p>
	<p><strong>비밀번호 :</strong><%=password %></p>
	<p><strong>비밀번호 확인 :</strong><%=password2 %></p>
	<p><strong>이름 : </strong><%=name %></p>
	<p><strong>연락처 :</strong><%=phone1 %>-<%=phone2 %>-<%=phone3 %></p>
	<p><strong>성별 :</strong><%=gender %></p>
	<p><strong>취미 :</strong><%=hobby%></p>
	<p><strong>가입인사 :</strong><%=comment %></p>
</body>
</html>