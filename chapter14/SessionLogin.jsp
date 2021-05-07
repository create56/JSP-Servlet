<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로그인 여부를 판단해서
	로그인이 되어있을 경우
	
	SessionIndex.jsp로 이동하도록 하세요
 -->
 <!-- 오류가 나는 이유 로그인을 하지 않고 isLogin을 꺼내와서 boolean타입으로 바꾸려고 했기떄문 -->
 <%
 	try {
 	boolean isLogin = (boolean)session.getAttribute("isLogin");
 	if(isLogin) {
 		response.sendRedirect("JSPBook/chapter14/SessionIndex.jsp");
 		}
 		
 	} catch(NullPointerException e) {
 		
 		//NullPointerException이 발생하는 이유(조건)?
 			// 로그인을 하지 않아서
 			// 따로 만들 코드가 없다
 		// 이유를 파악하고 그에 맞는 적절한 행동을 하세요.
 	}
 %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<label>아이디 : <input type="text" name="id"></label><br>
		<label>비밀번호 : <input type="password" name="pw"></label><br>
		<button type="button" onclick="login()">로그인</button>
	</div>
	
	<script>
		function login() {
			var id = $("[name=id]").val();
			var pw = $("[name=pw]").val();
			
			$.ajax({
				url:"/JSPBook/session/login";
				data:"id="+id+"&pw="+pw,
				success: function() {
					location.href="/JSPBook/chapter14/SessionIndex.jsp";
				},
				error:function() {
					alert("아이디 또는 비밀번호를 확인해주세요")
				}
			})
			
		}
	</script>
</body>
</html>