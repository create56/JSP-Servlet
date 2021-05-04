<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 로그인 하지 않은 사용자만 접근할 수있다 -->
<!-- 로그인한 사용자는 index.jsp로 이동한다 -->
<%
	//로그인 여부 체크
	// 1.session을 통한 로그인 여부 체크
	// 2.cookie를 통한 로그인 여부 체크
	
	// 클라이언트가 보낸 쿠키의 목록
	Cookie[] cookies = request.getCookies();
	// 로그인 여부
	boolean isLogin = false;
	
	// 이름이 ID(아이디) 인 쿠키가 있는지 여부
	boolean isID = false;
	// 이름이 PW (비밀번호) 인 쿠키가 있는지 여부
	boolean isPW = false;
	// 이름이 NickName (닉네임) 인 쿠키가 있는지 여부
	boolean isNickName = false;
	 
	for(int i=0; i<cookies.length; i++) {
		//쿠키의 처음부터 끝까지 반복문을 돌면서
		// 로그인 여부 체크
		
		// n번쨰 쿠키 
		Cookie cookie = cookies[i];
		// n번쨰 쿠키 이름=아이디
		String name = cookie.getName();
		//n번쨰 쿠키의 값
		String value = cookie.getValue();
		
	// isID == false -> n번쨰까지 이름이 ID인 쿠키를 찾지 못했다
	if(isID == false && name.equals("ID")) {
		isID = true;
	} 
	if(name.equals("pw")) {
		isPW = true;
	}
	
	if(name.equals("nickname")) {
		isNickName = true;
		}
	}
	
	// 쿠키에 이름이 아이디, 비밀번호, 닉네임인 쿠키가 모두 들어있다면은
	isLogin = isID && isPW && isNickName;
	
	//로그인이 되어있으므로 index.jsp로 이동
	if(isLogin) {
	// 로그인이 되어있다면 index.jsp로 이동		
	response.sendRedirect("/JSPBook/chapter14/index.jsp");
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