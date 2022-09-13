<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- <form> 태그 : 폼 태그 내에서 입력된 데이터를 한 번에 서버로 전송하는 태그
        <form> 태그 속성 : 
                           - action : 입력 데이터가 전송될 URL
                           - name : 폼을 식별하기 위한 이름
                           - accept-charset : 폼 전송할 때 인코딩 방식 지정
                           - target : action에 지정한 파일을 새로운 창으로 연다
                           - method : 서버에 전송할 데이터 방식(GET 또는 POST)
                           
         <input> 태그 : 폼 태그 안에 데이터 입력 공간 생성하는 태그
         <input> 태그 속성 : 
                           - type : 태그 모양 지정(text, radio, checkbox, password, button, hidden, submit, reset 등)
                                       text : 텍스트 박스(텍스트 입력할 수 있음)
                                       radio : 라디오 버튼(라디오 버튼 여러 개 중 하나만 선택 가능)
                                       checkbox : 체크박스(체크박스 여러 개 모두 선택 가능)
                                       password : 패스워드 입력 공간, 입력하면 ∙∙∙∙∙∙∙∙로 보임
                                       button : 버튼으로 생성
                                       hidden : 화면에 안 보여줌
                                       submit : 폼 태그 내에 입력된 데이터를 서버로 전달
                                       reset : 폼 태그 내에 사용자가 입력한 값을 초기화함
                           - name : 태그 이름 지정
                           ((더 많은데 일단 이거만 알아도 됨))
   -->

   <!-- <form> 태그 선언 -->
   <!-- POST 방식으로 /JSPTest/signForward/join1Proc.jsp 파일에 입력 데이터를 전송한다. -->
   <form action="/JSPTest/jsp/login/join1Proc.jsp" method="post" name="join1">
      아이디 : <input type="text" name="id" size=15 /><br />
      비밀번호 : <input type="text" name="pw" size=15 /><br />
      <input type="button" id="nextpage" value="다음 페이지로 이동" onclick="this.form.submit();" />
      <!-- <input type="submit" value="다음 페이지로 이동" id="nextpage"> // 40줄과 같은 기능 -->
      <!-- 40줄에서 타입을 버튼으로 지정하고 버튼을 클릭하면 submit 된다(서버로 전송한다) -->
      <!-- submit 했을 때 /JSPTest/signForward/join1Proc.jsp(서버)로 페이지가 이동된다 -->
   </form>
</body>
</html>


<!-- 데이터 전송 방식
      1. GET 방식 : 전송 URL에 입력 데이터를 쿼리 스트링으로 추가해서 전송하는 방식
        ex) https://www.naver.com?userId=1&pw=1234
            http://naver.com 에 userId의 값은 1, pw의 값은 1234인 데이터 전송
            URL 뒤에 ? 를 추가하고 키=값 형태로 써준다
            데이터가 여러 개인 경우 &로 구분한다
            위의 예시에서는 userId와 pw  즉, 데이터 2개를 같이 전송한다

      2. POST 방식 : 입력 데이터를 Request Body에 담아서 전송하는 방식
                     GET 방식처럼 URL에 데이터를 쓰지 않고 전송한다
-->