<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
out.print(response.getBufferSize() + "<br />");
out.print(response.getCharacterEncoding() + "<br />");
out.print(response.getContentType() + "<br />");
out.print(response.getStatus() + "<br />");

Collection collection = response.getHeaderNames();
Iterator it = collection.iterator();
String headerName = "";
while (it.hasNext()) {
	headerName = (String)it.next();
	out.print(it.next() + " = " + response.getHeader(headerName) + "br />");
}

//out.print();
//out.print();
%>