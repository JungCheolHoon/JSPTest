<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>application test</title>
</head>
<body>

   <!-- join2Form.jsp에서 폼 내에 입력(지정-아이디, 패스워드)된 아이디, 패스워드, 이름, 이메일, 전화번호 데이터를 전달 받았다. -->
   <!-- 데이터들은 request 객체 안에 존재한다. -->
   <!-- request의 메소드인 getParameter()를 활용하여 데이터를 가져올 수 있다. 
            () 안에 파라미터명을 써주면 해당하는 파라미터명의 파라미터 값을 가져온다.-->
   <!-- application, request, session, ~~~ 객체 4가지의 영역 - 책 참고 -->
   <!-- 가장 큰 범위인 application(영역 : 해당 프로젝트 내) 객체에 속성을 설정한다.(set) 
         == application의 setAttribute() 메소드로 application의 속성을 설정한다.(set) -->
   <!-- application.setAttribute() 에서 괄호 안에는 (속성명, 속성값)을 넣어준다. -->
   <!-- 여기서 request.getParameter("id")는 사용자가 입력한 아이디 값이다. -->
   <!-- 즉, application 객체에 속성명이 id이고, 속성값이 request.getParameter("id")인 속성을 설정한다.(set) -->
   <!-- 현재 프로젝트 내에 존재하는 모든 파일에서 application의 id 속성은 같은 값(사용자기 입력한 아이디)을 가진다. -->
   
   <!-- request.setCharacterEncoding("utf-8"); 이거는 POST 방식으로 데이터를 전송할 때 인코딩을 UTF-8로 무조건 필수로 써줘야 한다. (안 쓰면 한글 깨짐)-->
   <%
      request.setCharacterEncoding("utf-8");
   	  
      application.setAttribute("id", request.getParameter("id"));
      application.setAttribute("pw", request.getParameter("pw"));
      application.setAttribute("name", request.getParameter("name"));
      application.setAttribute("email", request.getParameter("email"));
      application.setAttribute("phone", request.getParameter("phone"));
   %>

   <!-- <a> 태그 : 하이퍼링크를 걸어주는 태그
        <a> 태그 속성 : 
                        - href : 클릭 시 이동할 링크(URL)
                        - target : 링크를 여는 방법
                                    _self : 현재 페이지에서 연다
                                    _blank : 새로운 탭에서 연다
                                    _parent : 부모 페이지로 연다 (뭔소린지 모르겠음)
                                    _top : 최상위 페이지로 연다  (뭔소린지 모르겠음)
                                    프레임이름 : 프레임 이름을 직접 명시해서 사용할 수 있다. (뭔소린지 모르겠음)
   -->
   <!-- 확인 글자 누르면 /JSPTest/signForward/login.jsp 페이지로 이동한다. -->
   <p>-------------------------------</p>
   <p>회원가입이 완료되었습니다!</p>
   <p>-------------------------------</p>
	<a href="/JSPTest/jsp/login/login.jsp">확인</a>

</body>
</html>