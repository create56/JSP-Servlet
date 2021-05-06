<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로그인 여부를 판단해서
	로그인이 되어있을 경우
	
	SessionIndex.jsp로 이동하도록 하세요
 -->
 <%
 	boolean isLogin = (boolean)session.getAttribute("isLogin");
 	if(isLogin) {
 		response.sendRedirect("JSPBook/chapter14/SessionIndex.jsp");
 	}
 %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<label>아이디 : <input type="text" name="id"></label>
		<label>비밀번호 : <input type="password" name="pw"></label>
		<button type=""></button>
	</div>
</body>
</html>