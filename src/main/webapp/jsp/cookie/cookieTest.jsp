<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>


<%
	// 쿠키명, 쿠키값(인코딩된)으로 쿠키 생성
	Cookie cookie = new Cookie("name", URLEncoder.encode("name 쿠키의 값", "utf-8"));		//웹브라우저에 보낼떄 인코딩해서 데이터를 보내야함
	
	// 생성한 쿠키는 반드시 response에 추가해 주어야 한다.
	// 클라이언트가 request를 보내서 서버에서 response를 클라이언트에게 보낼때 추가한 쿠키가 클라이언트에 전달된다.
	response.addCookie(cookie);
%>