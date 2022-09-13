<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	response.setContentType("text/xml");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");		//post 방식으로 넘겨줄때 써야함
   String name= request.getParameter("name")==null ? "" : request.getParameter("name");
%>

<%=request.getMethod()%><br/>
name=<%=name %>
</body>
</html>