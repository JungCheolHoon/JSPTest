<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>

<%
	// 클라이언트에게 전달한 쿠키들을 배열로 받는다
	Cookie[] cookies = request.getCookies();
	// 쿠키배열의 크기를 구한다.
	int cookiesLen = cookies.length;
	// 쿠키가 있다면
	if (cookies != null && cookiesLen > 0) {
		// 쿠키의 배열의 크기만큼 반복한다
		for (int i = 0; i < cookiesLen; i++) {
			// 쿠키명과 쿠키값을 출력해 본다.
			out.print("쿠키명 : "+cookies[i].getName());
			out.print(", 쿠키값 : "+cookies[i].getValue()+"</br>");
			// 쿠키명이 name이면 쿠키값을 변경한다.(같은 쿠키명의 새로운 쿠키를 생성한다)
			if(cookies[i].getName().equals("name")){
				Cookie cookie = new Cookie("name",URLEncoder.encode("abc","utf-8"));
	
				// 변경된 쿠키값을 확인한다.
				response.addCookie(cookie);
// 				out.print("쿠키명 : "+cookies[i].getName());
// 				out.print(", 쿠키값 : "+cookies[i].getValue()+"</br>");
				
				// 쿠키를 삭제한다.
// 				cookie.setMaxAge(0);
// 				response.addCookie(cookie);
// 				out.print("쿠키명 : "+cookies[i].getName());
// 				out.print(", 쿠키값 : "+cookies[i].getValue()+"</br>");
				
// 				// 쿠키 도메인 설정
// 				cookie.setDomain("www.abc.com"); // 해당 쿠키는 abc.com도메인의 www호스트만 발행된다.
// 				cookie.setDomain(".abc.com"); // 해당 쿠키는 abc.com도메인의 모든호스트만 발행된다.
				
// 				// 쿠키 경로 설정
// 				cookie.setPath("/path1");		// 해당 쿠키는 /path1에 발행된다.
			}
		}
	} else {
		out.print("쿠기가 없어요!");
	}
%>