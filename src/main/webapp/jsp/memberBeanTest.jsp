<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="MemberBean1" class="beans.MemberBean" scope="request" />
<jsp:useBean id="MemberBean2" class="beans.MemberBean" scope="request" />

<jsp:setProperty property="name" name="MemberBean1" value="홍길동" />
<jsp:getProperty property="name" name="MemberBean1" />

<jsp:setProperty property="name" name="MemberBean2" value="강감찬" />
<jsp:getProperty property="name" name="MemberBean2" />

<br />
<a href="memberBeanTest2.jsp?name=john&age=100&telnum=010-0000-0000">눌러주세요!</a> 
<!-- 보내는 데이터값의 파라미터명이랑 beans의 프로퍼티명이 같으면 자동으로 셋팅 -->
<%
// 	MemberBean.setName("홍길동");
// 	out.print("성명 : " + MemberBean.getName());
%>