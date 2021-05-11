<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// 	request.setCharacterEncoding("UTF-8");	

// 	String id = request.getParameter("id");
// 	String pw = request.getParameter("pw");
// 	String name = request.getParameter("name");
	
// 	Connection conn = null;
	
// 	try {
// 		Class.forName("org.mariadb.jdbc.Driver");
		
// 		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
// 		Statement stmt = conn.createStatement();
		
// 							// INSERT문부터 VALUES 까지가  쿼리 문이고 // ('korea','it','academy')
// 		int row = stmt.executeUpdate("INSERT INTO member(id, pw, name) VALUES('"+ id +"', '" + pw +"', '"+ name +"')");
// 		if(row == 1) {
// 			//회원가입 성공
// 			response.setStatus(201);
// // 			response.setStatus(Response.SC_CREATED);
// 		} else {
// 			response.setStatus(400);
// 			// 회원가입 실패
// 		}
// 	} catch(ClassNotFoundException e) {
// 		// 예외 처리
// 		e.printStackTrace();
// 		response.setStatus(500);
// 	}
%>