<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<title>Insert title here</title>
<style>
.input-box {
	position: relative;
	margin: 10px 0;
}

.input-box>input {
	background: transparent;
	border: none;
	border-bottom: solid 1px #ccc;
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
	width: 100%;
}

input::placeholder {
	color: transparent;
}

input:placeholder-shown+label {
	color: #aaa;
	font-size: 14pt;
	top: 15px;
}

input:focus+label, label {
	color: #8aa1a1;
	font-size: 10pt;
	pointer-events: none;
	position: absolute;
	left: 0px;
	top: 0px;
	transition: all 0.2s ease;
	-webkit-transition: all 0.2s ease;
	-moz-transition: all 0.2s ease;
	-o-transition: all 0.2s ease;
}

input:focus, input:not(:placeholder-shown) {
	border-bottom: solid 1px #8aa1a1;
	outline: none;
}

.likeabutton {
	text-decoration: none;
	font: menu;
	display: inline-block;
	padding: 2px 8px;
	background: ButtonFace;
	color: ButtonText;
	border-style: solid;
	border-width: 2px;
	border-color: ButtonHighlight ButtonShadow ButtonShadow ButtonHighlight;
}

.likeabutton:active {
	border-color: ButtonShadow ButtonHighlight ButtonHighlight ButtonShadow;
}
</style>
</head>
<body>
	<header>
		<h2>Login</h2>
	</header>

	<form name="loginForm" action="loginProc.jsp" method="post" accept-charset="utf-8">
		<div class="input-box">
			<input id="username" type="text" name="userid" placeholder="아이디">
			<label for="userid">아이디</label>
		</div>
		<div class="input-box">
			<input id="password" type="password" name="userpwd"
				placeholder="비밀번호"> <label for="userpwd">비밀번호</label>
		</div>
		<button class="likeabutton" onclick="this.form.submit();">로그인</button>
		<a class="likeabutton" href="/JSPTest/jsp/jsonlog/joinForm.jsp">회원가입</a>
	</form>
</body>
</html>