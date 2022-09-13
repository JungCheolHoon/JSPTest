<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String nameValue = URLEncoder.encode("홍길동","utf-8");
%>

<a href="/JSPTest/jsp/HeaderInfo.jsp?name=홍길동">눌러보세요!</a>

<%= request.getParameter("name") %>
<%= request.getCharacterEncoding() %><br />
<%= request.getContentLength() %><br />
<%= request.getContentType() %><br />
<%= request.getContextPath() %><br />
<%= request.getLocalAddr() %><br />
<%= request.getMethod() %><br />
<%= request.getRemoteAddr() %><br />
<%= request.getRequestURI() %><br />
<%= request.getRequestURL() %><br />

</body>
</html>