<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style>
table {
	border: 1px solid black;
	width: 500px;
}

tr {
	width: 100px;
}

td {
	width: 100px;
}
</style>
<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	// jQuery 쓸 때 무조건 $(function(){  <<여기안에 코드 작성>>  }); 쓰고 시작하기 => 페이지 로딩 완료되면 실행된다.
	$(function() {
		// id(#) 속성의 값이 login인 태그를 찾는다. : $("#login")
		// id 속성의 값이 login인 태그를 클릭 했을 때 실행  $("#login").click(function() { <<여기안에 코드 작성>> });
		$("#login").click(function() {
			
			/* jQuery에서 get, set 하는 방법
			 1. get - 값을 가져오는 방법
				 1) .html() : 요소의 자식 태그들의 태그나 문자열 가져옴 -> 테이블 내에 <tr>태그 안의 텍스트를 가져올 때 사용
				 2) .text() : 해당하는 모든 요소의 내용(텍스트)을 가져옴 -> 단순 text로 읽어옴, 태그는 가져오지 않는다
				 3) .val() : <input> 태그 등 value 속성에 값이 적용되는 태그의 값을 가져올 때 사용
			 2. set - 값 설정(변경)하는 방법
				 1) .html("변경할값") : ("  ") 괄호 쌍따옴표 안에 변경할 값을 입력해주면 값을 설정(변경, set)할 수 있다.
				 2) .text("변경할값") : 1)과 같음
				 3) .val("변경할값") : 1)과 같음
			*/
			// $("#id") : id속성(#)값이 id인 태그 찾음
			// $("#id").html() : id속성(#)값이 id인 태그 안에 있는 텍스트 가져옴
			// 가져온 텍스트를 id 변수에 넣음
			var id = $("#id").html();

			// $("#pw") : id속성(#)값이 pw인 태그 찾음
			// $("#pw").html() : id속성(#)값이 pw인 태그 안에 있는 텍스트 가져옴
			// 가져온 텍스트를 pw 변수에 넣음
			var pw = $("#pw").html();

			// if 조건문 : () 안이 true일 경우, {} 안의 코드 실행
			// id 속성 값이 loginid인 태그를 찾아서 그 안의 값이 id(43줄에서 선언한 변수)의 값과 동일하면 아래 코드 실행
			// == 현재 페이지에서 사용자가 입력한 아이디와 application 객체에 저장된 id속성의 값이 동일하면 아래 코드 실행
			if ($("#loginid").val() == id) {

				// id 속성 값이 loginpw인 태그를 찾아서 그 안의 값이 pw(48줄에서 선언한 변수)의 값과 동일하면 아래 코드 실행
				// == 현재 페이지에서 사용자가 입력한 패스워드와 application 객체에 저장된 pw속성의 값이 동일하면 아래 코드 실행
				if ($("#loginpw").val() == pw) {

					// Console 창에 "로그인 성공" 출력
					console.log("로그인 성공");
					// "로그인 성공" 알림창을 띄운다
					alert("로그인 성공");
				} else { // 현재 페이지에서 사용자가 입력한 패스워드와 application에 저장된 pw속성의 값이 다를 때 아래 코드 실행
					alert("비밀번호 틀림");
				}

			} else { // 현재 페이지에서 사용자가 입력한 아이디와 application에 저장된 id속성의 값이 다를 때 아래 코드 실행
				alert("아이디 틀림");
			}

		});
	});
</script>
</head>
<body>
	
	아이디 : <input type="text" id="loginid"><br />
	비밀번호 : <input type="text" id="loginpw"><br /> 
	<button id="login">로그인</button>
	
	<!-- "회원가입" 버튼 클릭 시 POST 방식으로 join1Form.jsp에 입력 데이터 전송 (여기서는 페이지 이동만 함)-->
<!-- 	<form action="join1Form.jsp" method="post"> -->
<!-- 		<input type="submit" value="회원가입"> -->
<!-- 	</form> -->
	<a href="/JSPTest/jsp/login/join1Form.jsp">회원가입</a>

	<table id="table" border="1">
		<tr>
			<td>아이디</td>
			<!-- application 객체에 저장된 속성 중 이름이 id인 속성의 값을 가져와서 테이블 데이터(td)로 넣어준다-->
			<td id="id"><%=application.getAttribute("id")%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td id="pw"><%=application.getAttribute("pw")%></td>
		</tr>
		<tr>
			<td>성명</td>
			<td id="name"><%=application.getAttribute("name")%></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td id="email"><%=application.getAttribute("email")%></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td id="phone"><%=application.getAttribute("phone")%></td>
		</tr>
	</table>
</body>
</html>