<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("page2 pageContext variable","page2 pageContext value");
	request.setAttribute("page2 request variable", "page2 request value");
	session.setAttribute("page2 session variable", "page2 seesion value");
	application.setAttribute("page2 application variable", "page2 application value");
	
	out.print(
			"page2 pageContext variable : " + pageContext.getAttribute("page2 pageContext variable")+"<br />"+
			"page2 request variable : " + request.getAttribute("page2 request variable")+"<br />"+
			"page2 session variable : " + session.getAttribute("page2 session variable")+"<br />"+
			"page2 application variable : " + application.getAttribute("page2 application variable")
	);
	
	out.print(
			"<br />" +"page1 pageContext variable : " + pageContext.getAttribute("page1 pageContext variable")+"<br />"+
			"page1 request variable : " + request.getAttribute("page1 request variable")+"<br />"+
			"page1 session variable : " + session.getAttribute("page1 session variable")+"<br />"+
			"page1 application variable : " + application.getAttribute("page1 application variable")
	);
%>