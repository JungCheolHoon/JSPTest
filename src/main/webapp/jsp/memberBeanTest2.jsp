<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="MemberBean" class="beans.MemberBean" scope="request" />

<jsp:setProperty property="*" name="MemberBean" />
<!-- 하이퍼링크를 통해 넘어온 값들이랑 모두 비교해서 같으면 java데이터에 자동으로 넣어준다 -->

<%
	out.print(MemberBean.getName()+"<br />");
	out.print(MemberBean.getAge()+"<br />");
	out.print(MemberBean.getTelnum()+"<br />");
%>

<%
// 	String data = request.getParameter("data");
// 	out.print(data);
%>