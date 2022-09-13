<%@page import="org.apache.jasper.tagplugins.jstl.core.Remove"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="form.Form"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%!
	public String getParam(HttpServletRequest request, String paramName) {
		return request.getParameter(paramName) == null ? "" : request.getParameter(paramName);
	}
%>
<%
	if(application.getAttribute("totaljoin")!=null){		// 회원이 한명이라도 있을때 실행
		String useridParam = getParam(request, "userid");		// 로그인폼에서 받은 id
		String userpwdParam = getParam(request, "userpwd");		// 비밀번호폼에서 받은 id
		int total = Integer.parseInt((String)application.getAttribute("totaljoin"));	// 회원가입폼에서 선언한 회원수 속성값을 정수로 변환
		String jsondata = "";		// json데이터에서 id,pwd를 추출하기 위한 모든 데이터
		String[] idpwd = new String[4*total];		// id, pwd, name, email을 담기 위한 배열, 회원수마다 각 정보가 4개씩 들어있기 때문에 4*total 배열만큼 생성
		String listdata ="";		// idpwd배열에 담긴 데이터를 하나의 문자열로 만들어 리스트를 출력하는 jsp에 보내기 위한 문자열
		
		Scanner scanner = new Scanner(new File("C:/eclipse_workspace/JSPTest/src/main/webapp/jsp/jsonlog/members.json"));
		while(scanner.hasNext()){	
			scanner.useDelimiter(",");		// 파일을 읽고 데이터에있는 , 를 없앤다.
			String str = scanner.next();	
			jsondata += str;					// json파일을 읽은 데이터들은 jsondata에 문자열로 저장한다
		}
		
		int jsonlen = jsondata.split("\"").length;		//문자열로 저장된 jsondata를 (") 단위로 자른 길이
		for(int i = 0; i<jsonlen; i++){
			if((i+1)%4==0){									// 출력해보았을때 하나의 회원정보만 존재한다면 3,7,11,15번째 배열에 id,pwd,name,email 정보가 들어감
				idpwd[(i+1)/4-1] = jsondata.split("\"")[i];	// 각 정보를 idpwd 배열에 담음
			}
		}
		
		int idpwdlen = idpwd.length;
		for(int i = 0; i<idpwdlen ; i++){
			listdata += idpwd[i]+",";			// 리스트목록 출력할 jsp에 넘겨주기 위해 idpwd에 담긴 데이터를 하나의 데이터로 저장한다.
		}
		listdata = listdata.substring(0, listdata.length()-1);		// split 를 사용하기 좋게 자르기 위해서 마지막문자인 , 는 자른다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.likeabutton {
	text-decoration: none;
	font: menu;
	display: inline-block;
	padding: 2px 8px;
	background: ButtonFace;
	color: ButtonText;
	border-style: solid;
	border-width: 2px;
	border-color: ButtonHighlight ButtonShadow ButtonShadow ButtonHighlight;
}

.likeabutton:active {
	border-color: ButtonShadow ButtonHighlight ButtonHighlight ButtonShadow;
}
</style>
</head>
<body>
<%
		HttpSession s = request.getSession();			// 세선 생성
		
		for(int i = 0; i<idpwdlen ; i++){
			if(i%4 ==0){			// idpwdlen의 정보는 4개씩 담기고 4개가 넘어가면 다른 회원의 정보이므로 4개의 정보마다 회원정보를 매칭한다.
				if(useridParam.equals(idpwd[i])){		// 로그인폼에서 넘어온 id데이터와 json파일에서 저장한 idpwd 회원의 정보중 id데이터가 같다면
					s.setAttribute("useridSess", idpwd[i]);		// 세션을 셋팅한다
					s.setAttribute("userpwdSess", idpwd[i+1]);		// 아이디 다음번째 배열에는 패스워드가 들어간다	
				}
			}
		}
		
		if (s != null) {
			if(s.getAttribute("useridSess") !=null){ 
				String useridSess = (String) s.getAttribute("useridSess");
				String userpwdSess = (String) s.getAttribute("userpwdSess");
				if (!useridSess.equals(useridParam) || !userpwdSess.equals(userpwdParam)) {
					out.print("로그인에 실패하셨습니다!");
				} else {
					out.print("====================<br />");
					out.print("====================<br />");
					out.print(useridSess + "님이 로그인 하셨습니다<br />");
					out.print("====================<br />");
					out.print("====================");
					out.print("<br />&nbsp;<a class='likeabutton' href='memberManager.jsp?listdata="+listdata+"&len="+idpwdlen+"'"+">리스트</a>");
					// idpwd데이터를 다시 잘라서 쓰기위해서 idpwd를 하나의 문자열로 생성된 listdata와 idpwd의 길이를 넘겨준다.
					out.print("&nbsp;<a class='likeabutton' href='logoutProc.jsp'>로그아웃</a>");
				}
			}
			else{
				out.print("====================<br />");
				out.print("====================<br />");
				out.print("==로그인에 실패하셨습니다==<br />");
				out.print("====================<br />");
				out.print("====================<br />");
				out.print("<br /><a class='likeabutton' href='loginForm.jsp'>로그인 화면으로 가기</a>");
			}
		}
	}
	else{	//	회원정보가 존재하지 않는다면
		out.print("====================<br />");
		out.print("====================<br />");
		out.print("==등록된 회원이 없습니다==<br />");
		out.print("====================<br />");
		out.print("====================<br />");
		out.print("<br /><a class='likeabutton' href='loginForm.jsp'>로그인 화면으로 가기</a>");
	}
%>

</body>
</html>
