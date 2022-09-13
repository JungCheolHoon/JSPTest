<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="form.Form"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="form" class="form.Form" scope="request" />
<jsp:setProperty property="*" name="form" />

<%
	
	File file = new File("C:/eclipse_workspace/JSPTest/src/main/webapp/jsp/jsonlog/members.json"); 
	if(!file.exists()){		// 파일이 없다면 만들어라
		file.createNewFile();
	}
	
	else{						// 파일이 있다면
		
		String jsondata = "";	
		Scanner scanner = new Scanner(new File("C:/eclipse_workspace/JSPTest/src/main/webapp/jsp/jsonlog/members.json"));
				
		while(scanner.hasNext()){		// 그 파일의 모든 데이터를 읽어서 변수에 저장해라
			String str = scanner.next();
			jsondata += str;
		}
	
		if(jsondata == ""){				// 만약 그 파일이 비어있다면
			FileWriter fw = new FileWriter(file, true);
			BufferedWriter writer = new BufferedWriter(fw);
			
			writer.write("["+form.toString()+"]");		// 폼에서 들여온 데이터들만 파일에 써라
			writer.close();
			
			application.setAttribute("totaljoin", "1");	// 그리고 총 회원수는 1명으로 해라
			////////////////
		}
		else{									// 파일에 내용이 있다면
			int total = Integer.parseInt((String)application.getAttribute("totaljoin"));
			total++;							// 회원수를 1명늘리고
			application.setAttribute("totaljoin", Integer.toString(total));		// 회원수 속성을 업데이트하라
			jsondata = jsondata.substring(1, jsondata.length()-1);		// json 형식으로 저장하기 위해 젤 앞 뒤 문자([ , ])를 지우고	
			
			new FileOutputStream("C:/eclipse_workspace/JSPTest/src/main/webapp/jsp/jsonlog/members.json").close();
		
			FileWriter fw = new FileWriter(file, true);
			BufferedWriter writer = new BufferedWriter(fw);
			
			writer.write("["+jsondata+","+form.toString()+"]");			// 원래있던 데이터와 함께 데이터를 추가해라
			writer.close();
		}
	}
	
	
%>
<script>
	alert("회원가입이 완료되었습니다");
	location.href="loginForm.jsp";
</script>