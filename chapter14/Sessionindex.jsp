<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 로그인된 사용자
	// 세션에서 로그인된 사용자의 닉네임을 가져와 저장하세요
	String nickname = (String)session.getAttribute("nickname");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<strong>로그인 된 사용자만 볼 수 있는 페이지입니다</strong>
	<p><strong><%=nickname %>"로그인된 사용자의 닉네임"</strong>님 환영합니다~</p>
	
	<a href="/JSPBook/session/logout">로그아웃</a>
	
</body>
</html>