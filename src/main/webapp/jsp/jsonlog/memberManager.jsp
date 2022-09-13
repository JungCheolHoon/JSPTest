<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String listdata = request.getParameter("listdata");		// id,pwd,name,email이 문자열로 저장된 데이터
	String lenstr = request.getParameter("len");				// id,pwd,name,email * 회원수만큼의 길이
	int len = Integer.parseInt(lenstr);
	String [] memberdata = new String[len];					// 그 길이만큼 맴버데이터 배열 생성
	
	for(int i = 0; i<len; i++){
		memberdata[i] = listdata.split(",")[i];						// 문자열을 ,단위로 잘라서 저장
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>

</script>
<title>맴버관리</title>
<link rel="stylesheet" href="/WEBTest/css/table.css" />
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
	<div>
		<table id="mytable">
			<caption>회원현황</caption>
			<colgroup>
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="100" />
			</colgroup>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
					<%for(int i=0; i<len;i++){ 
						if(i%4==0){			// 회원수는 데이터 4개단위로 저장되므로 4개중 아이디를 저장시 tr태그 출력
							out.print("<tr>");
						}
						
						out.print("<th>"+memberdata[i]+"</th>"); 	// 각 데이터(id,pwd,name,email)를 순서대로 저장
						
						if(i%4==3){			// 마지막 email 데이터 저장시 tr태그 닫음
							out.print("</tr>");
						}
					}
					%>
			</tbody>
		</table>
		<br /><a class="likeabutton" href='logoutProc.jsp'>로그아웃</a>
	</div>
</body>
</html>