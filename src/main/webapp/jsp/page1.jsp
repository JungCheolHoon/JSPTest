<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

page1 <br />

<%
	request.setCharacterEncoding("utf-8");
	System.out.println("page1 request object : " + request);
	request.setAttribute("page1Attr",request);	
%>
<jsp:forward page="page2.jsp" >
	<jsp:param name="name" value="홍길동"/>
	<jsp:param name="age" value="20"/>
</jsp:forward>	