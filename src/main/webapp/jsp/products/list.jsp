<%@page import="products.Product"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("utf-8"); %>
<%-- <jsp:useBean id="product" class="products.product" scope="request" /> --%>
<%-- <jsp:setProperty property="*" name="product" /> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/WEBTest/css/table.css" />
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

</script>
</head>
<body>
	<div>
		<table id="mytable">
			<caption>재고현황</caption>
			<colgroup>
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="100" />
			</colgroup>
			<thead>
				<tr>
					<th>제품번호</th>
					<th>제품명</th>
					<th>입고일시</th>
					<th>재고수량</th>
					<th>재고+</th>
					<th>재고-</th>
				</tr>
			</thead>
			<%
			Enumeration productNos = application.getAttributeNames();
			%>
			<tbody id="list">
			<%
				while(productNos.hasMoreElements()){
					String prodNo = (String)productNos.nextElement();
					Product product =null;
					if(application.getAttribute(prodNo) instanceof Product){
						product = (Product)(application.getAttribute(prodNo));
						if(product!=null){
					
// 					Product product = (Product)application.getAttribute(productNo);
			%>
					<tr>
					<td><%=product.getPnum()%></td>
					<td><%=product.getPname() %></td>
					<td><%=product.getPdate() %></td>
					<td><%=product.getPcnt() %></td>
					<td>+</td>
					<td>-</td>
					</tr>
			<%	
						}
					}
				}
			%>
<!-- 				<tr> -->
<%-- 					<th><%=application.getAttribute("pnum")%></th> --%>
<%-- 					<td><%=application.getAttribute("pname")%></td> --%>
<%-- 					<td><%=application.getAttribute("pdate")%></td> --%>
<%-- 					<td><%=application.getAttribute("pcnt")%></td> --%>
<%-- 					<td><a href="/JSPTest/jsp/modify.jsp?data=<%=application.getAttribute("pcnt")%>&data1=1">+</a></td> --%>
<%-- 					<td><a href="/JSPTest/jsp/modify.jsp?data=<%=application.getAttribute("pcnt")%>&data1=2">-</a></td> --%>
<!-- 				</tr> -->
			</tbody>
		</table><br />
		<a href="/JSPTest/jsp/upload.jsp">제품등록</a>
	</div>
</body>
</html>