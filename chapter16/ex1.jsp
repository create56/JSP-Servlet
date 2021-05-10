<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/* DB에 select, insert, update,delete 를 하기 위한 준비 / DB연결하기
	1. 퀴리를 수행할 Connection 객체 생성
	2. 연결을 수행할 Driver 로딩 (16번쨰 줄)
	3. DBMS와 연결 (15번쨰 줄)
	4. 쿼리 전송
	5. DB연결 해제(32번쨰 줄부터 38번쨰 줄까지)
	
	*/
	Connection conn = null;
	try {
	Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
											// 서버주소이름 // 포트번호       // JSPBookDB // 계정의 아이디와 비밀번호
		/*		
// 		conn = DriverManager.getConnection("jdbc:mariadb//localhost:3307/JSPBookDB","root","koreait");
// 											//따로 지정가능
// 		Properties props = new Properties();
// 		props.put("uesr", "root");
// 		props.put("password", "1234");
// 		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB",props);
		*/
		out.println("<h1>DB접속에</h1>");
		out.println("<h1>성공했습니다</h1>");
		out.println("<h1>짝짝짝~!</h1>");
 	} catch(Exception e) {
 		e.printStackTrace();
 		
 		out.println("<h1>DB접속에</h1>");
		out.println("<h1>실패했습니다</h1>");
		out.println("<h1>이클립스 콘솔을 확인하세요.</h1>");
 	} finally {
 		if(conn != null) {
 			try {
	 		conn.close();
	 		
	 		out.println("<h1>연결을 성공적으로 끊었습니다</h1>");
 			} catch(SQLException e) {
 				e.printStackTrace();
 				
 				out.println("<h2>연결을 끊지 못했습니다</h2>");
 				out.println("<h2>이클립스 콘솔을 확인하세요</h2>");
 			}
 				
 		}
 			
 	}
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>