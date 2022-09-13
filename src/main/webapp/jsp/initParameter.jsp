<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.catalina.core.ApplicationFilterConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Enumeration enumeration = application.getInitParameterNames();
	
	while(enumeration.hasMoreElements()){
		String paramName = (String)enumeration.nextElement();
		String paramValue = application.getInitParameter(paramName);
		out.print("초기화파라미터 변수명 : " + paramName
					+ ", 초기화 파라미터 변수값 : " + paramValue + "<br/>");
	}

%>