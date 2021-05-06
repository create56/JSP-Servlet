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
	
	if(cookies != null) {
	 
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
	
// 	isID = name.equals("ID"); // 아렇게도 가능
		if(isPW == false && name.equals("pw")) {
		isPW = true;
		}
		
		if(isNickName == false && name.equals("nickname")) {
		isNickName = true;
		}
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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pw"><br>
	<button type="button" onclick="login()">로그인</button>
</div>
<!-- 	<form action="/JSPBook/chapter14/login_process.jsp" method="POST" onsubmit="login()"> onsubmit 로그인 이라는 버튼을 눌렸을떄 발생하는 이벤트 객체 -->
<!-- 		<input type="submit" value="로그인"> -->
<!-- 	</form> -->
	<script>
	//사용자로부터 입력받는 구간
		function login() {
			// ajax를 사용해서 login_process.jsp를 호출하거
			// login_process.jsp가 반환하는 결과값을 사용해서
			// 로그인 성공 시 index.jsp로 이동
			// 로그인 실패 시 "아이디와 비밀번호가 일치 하지 않습니다" 를 출력
			
			// 사용자가 input 태그에 입력한 id
			var id = $("[name=id]").val();
			// 사용자가 input 태그에 입력한 pw
			var pw = $("[name=pw]").val();
			
			$.ajax ({
				url:"/JSPBook/cookie/login", // /cookie/login/chapter14/login_process.jsp
				data:"id=" +id+ "&pw="+pw,  //id="id",pw="pw"(X) // id="id"&pw="pw"(O) 하나의 통으로 전달
				success: function() {
					//요청이 성공 했을떄의 동작(200번대 300번대 응답코드가 돌아왔을떄)
					location.href="/JSPBook/chapter14/index.jsp";
				},
				error:function() {
					//요청이 실패 했을떄의 동작(400번대 500번대 응답코드가 돌아왔을떄)
					alert("아이디 또는 비밀번호가 올바르지 않습니다.");	
				}				
			})
			return false;
			// ajax -> jQuery 라이브러리  안에 들어 있음
			// jQuery -> 자바스크립트를 조금 더 편하게 사용해주는 툴
			
			// 브라우저는 HTML, CSS, JavaScript 를 갖고 있고
			// jQuery는 갖고 있지 않음
		}
	</script>
</body>
</html>