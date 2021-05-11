<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// DB에 들어있는 현재 사용자의 정보를 꺼내오기!!\
	Connection conn = null;
	String id = null;
	String pw = null;
// 	stmt.executeQuery("SELECT * FROM member WHERE name ='" + name + "'");
// 	String name = (String)session.getAttribute("name");
	try {

	Class.forName("org.mariadb.jdbc.Driver");
	
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
	
	PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member WHERE idx= ?");
	int idx = (int) session.getAttribute("idx");
	pstmt.setInt(1, idx);
	
	ResultSet rs = pstmt.executeQuery();

	rs.next();
	
	 id = rs.getString("id");
	 pw = rs.getString("pw");
		
	} catch(ClassNotFoundException | SQLException e) {
		
	} finally {
		if(conn != null ) {
			try{
				conn.close();
			} catch(SQLException e) {
				
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
 <!-- 비밀번호, 이름 모두 바꾼다 -> 비밀번호 이름 모두를 전달 -->
 <!-- 비밀번호만 바꾼다 -> 비밀번호 이름 모두를 전달하지만 이름은 바꾸기전 그대로 전달 -->
 <!-- 이름만 바꾼다 -> 비밀번호는 전달하지 않고 이름만 전달 -->
	<p>회원정보 수정하는 페이지입니다</p>
	<p>아이디는 수정하실 수 있습니다</p>
	<hr>
	
	<p>
		<label>아이디 : <input type="text" disabled="disabled" value="<%= id%>"></label>
		
		
	</p>
	
	<p>
		<label>비밀번호 : <input type="password" name="pw" value=""></label>
	</p>
	
	<p>
		<label>이름 : <input type="text" name="name" value=""></label>
	</p>
	
	<input type="submit" value="수정" onclick="return update()">
	
	<script type="text/javascript">
		function update() {
			var pw = $("[name=pw]").val();
			var name = $("[name=name]").val();
			
			$.ajax({
				url:"/JSPBook/member/update",
				data:"pw="+ pw + "&name" + name,
				type: "post",
				success:function() {
					alert("회원 정보를 수정하였습니다.");
					location.reload();
				},
				error:function() {
					alert("회원정보를 수정하지 못했습니다.\n잠시 후 다시 시도해 주세요.");
				}
				
			});
		}
	</script>
</body>
</html>