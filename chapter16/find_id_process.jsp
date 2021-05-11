<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 사용자가 입력한 이름을 사용해서 아이디를 찾아서 전달 -->
<!-- 이름과 일치하는 아이디가 여러개 일 경우  -->

<%
// 	String name = request.getParameter("name");

// 	Connection conn = null;
	
// 	try {
// 	Class.forName("org.mariadb.jdbc.Driver");
	
// 	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
	
// 	Statement stmt = conn.createStatement();
	
// 	ResultSet rs = stmt.executeQuery("SELECT id FROM member WHERE name = '" + name +"'");
	
// 	boolean isExist = rs.next();
// 	if(isExist) {
// 		String id = rs.getString("id");
		
// 		out.print(id);
		
// 		response.setStatus(200);
// 	} else {
// 		response.setStatus(403);
// 	}
		
// 	} catch(Exception e) {
// 		e.printStackTrace();
// 		response.setStatus(500);
// 	} finally {
// 		if(conn != null) {
// 			try {
// 				conn.close();
				
// 			} catch(SQLException e) {
				
// 			}
// 		}
// 	}
	
	
%>