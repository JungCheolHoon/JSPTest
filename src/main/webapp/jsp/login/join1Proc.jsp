<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!-- join1Form.jsp 에서 submit하여 전송한 데이터가 해당 페이지(join1Proc.jsp)로 전송되었음 => request 객체에 데이터 들어 있음(아마?) -->

<%--     <jsp:forward> 태그 : 액션태그, 현재 JSP 페이지에서 다른 JSP 페이지로 요청 처리를 전달 --%>
<!--                                       == 전송받은 request, response 객체를 다른 JSP 파일로 전달 -->


<!--                             ((데이터))
	     join1Form.jsp == 전송 ==> join1Proc.jsp  == 전달 ==> join2From.jsp -->

<!--     현재 페이지는 요청을 전달만 하고 브라우저에서 실행되지 않는다(== 응답 X) -->

<jsp:forward page="join2Form.jsp" />
    