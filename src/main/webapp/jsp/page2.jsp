<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

page2<br />

<%
	request.setCharacterEncoding("utf-8");
	System.out.println("page2 request object : " + request);
	String name = request.getParameter("name") == null ? "" : request.getParameter("name");
	String age = request.getParameter("age") == null ? "" : request.getParameter("age");
	out.print("name=" + name + ", age=" + age);
	
	Object obj = request.getAttribute("page1Attr");
	System.out.println("page1 request object : " + obj);
	System.out.println("page2 request object : " + request);
	System.out.println(obj.equals(request));
	
%>

<%-- <jsp:forward page="page3.jsp" > --%>
<%-- 	<jsp:param name="name" value="<%=name %>"/> --%>
<%-- 	<jsp:param name="age" value="<%=age %>"/> --%>
<%-- </jsp:forward>	 --%>