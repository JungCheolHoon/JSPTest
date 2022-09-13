<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	session.invalidate();		// 세션 종료
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	========================<br />
	======로그아웃 되었습니다=====<br />
	========================<br />

	<a class="likeabutton" href="loginForm.jsp">로그인 화면으로 가기</a>
</body>
</html>