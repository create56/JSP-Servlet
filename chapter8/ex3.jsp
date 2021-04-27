<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
</head>
<body>
	<form name="loginForm" >
		<p>이름 : <input type="text" name="name"></p>
		<p>아이디 :<input type="text" name="u_id"></p>
		<p>비밀번호 :<input type="password" name="u_pw1"></p>
		<p>비밀번호 확인 :<input type="password" name="u_pw2"></p>
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
	
	<script>
		// 전송버튼을 눌렀을 떄 이름 , 아이디 , 비밀번호, 비밀번호 확인 모드 입력되었는지 확인하세요
		// 이름, 아이디, 비밀번호, 비밀번호, 확인이 입력되지 않았을떄
		// (해당 항목을 입력하세요) 라고 출력하고 해당 항목을 포커스를 이동시키세요
		
		// 아이디는 4자이상 12자 이하
		// 비밀번호는 8자이상 16자미만
		// 비밀번호는 비밀번호 확인과  일치해야합니다
		function checkForm() {

			var form = document.longinForm;
			var uname = form.name.value;
			var u_id = form.id.value;
			var u_pw1 = form.pw.value;
			var u_pw2 = form.pw2.value;
			
			if(uname == "") {
				alert("이름을 입력하세요");
				form.uname.focus();
				return false;
			} else if(uname.length < 6 || uname.length > 14) {
				alert("이름을 6 ~ 14자 이내로 입력해주세요");
				return false;
			}
			
			} if(u_id== "") {
				form.u_id.focus();
				alert("아이디를 입력하세요");
				return false;
			}else if(u_id < 4 || u_id > 12)  {
				alert("아이디는 4자이상 12자 미만이어야합니다")
				form.u_id.select();
				return false;
			}	
			
			}if(u_pw1== "") {
				form.u_pw.focus();
				alert("비밀번호를 입력하세요");
				return false;
			}else if (u_pw.length < 8 || u_pw > 16) {
				form.u_pw1.select();
				alert("비밀번호는 8자 이상 16자 미만이어야합니다")
				return false;
			} else if(u_pw1 != u_pw2) {
				alert("비밀번호가 일치 하여야합니다")
				form.u_pw2.select();
				return false;
			}
			
			} else if(u_pw2== "") {
				form.u_pw2.focus();
				alert("비밀번호를 입력하세요");
				return false;
			} else {
				alert("제대로 입력했으면 입력한 값을 서버로 보냅니다");
				
			}
		}	
				
		}
	</script>
</body>
</html>