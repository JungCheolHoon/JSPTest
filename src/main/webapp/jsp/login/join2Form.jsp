<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/JSPTest/jsp/login/join2Proc.jsp"  method="post" name="join2">
	<% request.setCharacterEncoding("utf-8"); %>
<%-- 	<!-- <%= request.getParameter("id") %> : request 객체 안에 파라미터 이름이 id인 파라미터 값을 가져온다. --> --%>
<%-- 	<!-- <%= %> 는 텍스트를 출력한다. --> --%>
	<!-- request.getParameter("id") 는 join1Form.jsp에서 사용자가 입력한 아이디 값을 리턴 -->
<%-- 	<!-- 즉, <%= request.getParameter("id") %> 는 사용자가 입력한 아이디 텍스트가 된다. --> --%>
	<!-- value 속성의 값을 사용자가 입력한 아이디 텍스트로 넣어준 것이다. -->
	<input type="hidden" name="id" size=15 value="<%= request.getParameter("id") %>" />
    <input type="hidden" name="pw" size=15 value="<%= request.getParameter("pw") %>" />
	성명: <input type="text" name="name"/><br />
	이메일: <input type="text" name="email"/><br />
	전화번호:<input type="text" name="phone"/><br />
	<button id="nextpage1" value="다음 페이지로 이동" onclick="document.getForm.submit()" >다음 페이지로 이동</button>
</form>
</html>