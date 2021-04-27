<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm" action="">
		<p>
			이름: <input type="text" name="name">
			<label>아이디 : <input type="text" name="id"></label>
			<label>비밀번호 : <input type="password" name="pw"></label>
			<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
	
	<script>
	function checkForm() {
		var form = document.frm;
		var id  = form.id.value;
		
		// 아이디는 영문 소문자만 입력 가능합니다.
		var isAlpha= (ch >='A' && ch <='Z' ) || (ch >= '0' && <= '9'); //이렇게 사용가능
		if(!isAlpha ) {
			alert("아이디는 영문 소문자만 입력가능합니다")
			form.id.select();
			return false;
		}
// 		for (var i = 0; i <id.length; i++) {
// 			var ch = id.chatAt(i);
// 		if(ch >='A' && ch <='Z' ) {
// 			alert("아이디는 영문 소문자만 입력가능합니다")
// 		} else if(ch >= '0' && <= '9') {
// 			alert("아이디는 영문 소문자만 입력가능합니다")
 		
// 			// n번쨰 문자가 영문 소문자가 아닐떄
// 			// alert을 사용해서 "아이디는 영문 소문자만 입력 가능합니다!를 출력하세요
			
// 		}
		
		//비밀번호는 숫자만 입력 가능합니다
		var pw  = form.pw.value;
		var isNumber = !isNaN(pw);
		if(!isNumber) {
			alert("비밀번호는 숫자만 가능합니다")
			form.pw.select();
			return false;
		}
		
		}
		var name = form.name.value;
		var firstName = name.substr(0,1); //앞에 성만 잘라냄
		
		//이름은 숫자로 시작할 수 없음
		//is NaN -> 매개변수로 전달된 값이 숫자인지 아닌지 판별하는 함수
		//is NotaNumber -> 매개변수로 전달된 값이 숫자 -> false 반환  숫자가 아니면 ->true 반환
		var isNotNumber = isNaN(firstName);
		if(!isNotNumber) {
			alert("이름은 숫자로 시작할수 없습니다!")
			form.name.select();
			return false;
		}
		
	}
	</script>
</body>
</html>