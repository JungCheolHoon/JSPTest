<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="/JSPTest/jsp/uploadProc.jsp" method="post">
      재고번호 : <input type="text" name="pnum" size=15 /><br />
      제품명 : <input type="text" name="pname" size=15 /><br />
      입고일 : <input type="text" name="pdate" size=15 /><br />
      재고수량 : <input type="text" name="pcnt" size=15 /><br />
      <input type="button" id="nextpage" value="확인" onclick="this.form.submit();" />
   </form>
</body>
</html>