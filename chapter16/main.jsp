<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = (String) session.getAttribute("name");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>로그인 된 사용자가 보는 페이지입니다.</h1>
	
	<p>로그인한 사용자의 닉네임은 <h1></h1> 입니다</p>
	
	<div>
		<a href="/JSPBook/chapter16/update.jsp">회원정보 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" onclick="deleteMeber()">회원탈퇴</a>
	</div>
	
	<script type="text/javascript">
		function deleteMeber() {
			$.ajax({
				url:"/JSPBook/member/delete",
				success: function() {
					alert("회원 탈퇴 처리가 되었습니다.\n로그인 페이지로 이동합니다");
					
					location.href="/JSPBook/chapter16/index.jsp";
				},
				error:functio(){
					alert("회원 탈퇴 처리가 되지 않았습니다\n잠시후 다시 시도해주세요.");
				}
			})
		}
	</script>
</body>
</html>