<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    %>
<jsp:include page="jspf/top.jsp" flush="false" > 
	<jsp:param name="name" value="홍길동" />
	<jsp:param name="age" value="20" />
</jsp:include>

<!-- 
	include 액션태그에서는 인클루드한 파일내에서 선언한 변수에 접근할 수 없다.
	=>인클클루드한 파일의 결과(출력물)만 포함하기 때문
 -->
<%-- <%@include file="jspf/top.jsp" %> <!--  코드를 그대로 가져오므로 변수값을 들고 올 수 있다 --> --%>

<%-- <% int topInt = 1000; //가능 %> --%>
<%-- <%=topInt%> --%>

<br /><br /><br />
main.jsp
<br /><br /><br />

<jsp:include page="jspf/bottom.jsp" flush="false" />
<%-- <%@include file="jspf/bottom.jsp" %> --%>