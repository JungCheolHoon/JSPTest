<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name")==null? "" : request.getParameter("name");
	String age = request.getParameter("age")==null? "" : request.getParameter("age");
	out.print("name="+name+", age="+age);
%>
    
top.jsp

<%
	int topInt = 100;
%>

