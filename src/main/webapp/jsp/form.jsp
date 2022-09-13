<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<form name="getForm" action="/JSPTest/jsp/formResult.jsp" method="get">
		get : <input type="text" name="name" size="15" /><br />
		<input type="button" value="get전송" onclick="document.getForm.submit();" />
	</form>
</div>

<div>
	<form name="postForm" action="/JSPTest/jsp/formResult.jsp" method="post">
		post : <input type="text" name="name" size="15" /><br />
		<input type="button" value="post전송" onclick="document.postForm.submit();" />
	</form>
</div>

</body>
</html>