<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("page1 pageContext variable","page1 pageContext value");
	request.setAttribute("page1 request variable", "page1 request value");
	session.setAttribute("page1 session variable", "page1 seesion value");
	application.setAttribute("page1 application variable", "page1 application value");
	
	out.print(
			"page1 pageContext variable : " + pageContext.getAttribute("page1 pageContext variable")+"<br />"+
			"page1 request variable : " + request.getAttribute("page1 request variable")+"<br />"+
			"page1 session variable : " + session.getAttribute("page1 session variable")+"<br />"+
			"page1 application variable : " + application.getAttribute("page1 application variable")
	);
%>