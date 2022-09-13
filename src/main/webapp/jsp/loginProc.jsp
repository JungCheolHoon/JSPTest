<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	public String getParam(HttpServletRequest request ,String paramName){
		return request.getParameter(paramName)==null ? "" : request.getParameter(paramName);
	}
%>
<%
	String useridParam = getParam(request, "userid");
	String userpwdParam = getParam(request, "userpwd");
	
	HttpSession s = request.getSession();
	s.setAttribute("useridSess", "1");
	s.setAttribute("userpwdSess", "2");
	
	if(s!=null){
		String useridSess = (String)s.getAttribute("useridSess");
		String userpwdSess = (String)s.getAttribute("userpwdSess");
		if(!useridSess.equals(useridParam) || !userpwdSess.equals(userpwdParam)){
			out.print("로그인에 실패하셨습니다!");
		}else {
			out.print(useridSess + "님이 로그인 하셨습니다");
			out.print("&nbsp;<a href='logoutProc.jsp'>로그아웃</a>");
		}
		out.print("<br /><a href='#' onclick='history.back();'>로그인 화면으로 가기</a>");
	}
%>