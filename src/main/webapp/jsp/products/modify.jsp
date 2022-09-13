<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String cntstr = request.getParameter("data");
	String addre = request.getParameter("data1");
	int addre1 = Integer.parseInt(addre);
	int cnt = Integer.parseInt(cntstr);
	if(addre1 == 1){
		cnt++;	
	}
	else{
		cnt--;
	}
	String cnt1 = Integer.toString(cnt);

	application.setAttribute("pcnt", cnt1);

%>

<jsp:forward page="list.jsp" />