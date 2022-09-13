<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

page3 <br />

<%
	request.setCharacterEncoding("utf-8");
	System.out.println("page3 request object : " + request);
	String name = request.getParameter("name") == null ? "" : request.getParameter("name");
	String age = request.getParameter("age") == null ? "" : request.getParameter("age");
	out.print("name=" + name + ", age=" + age);
%>