<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="product" class="products.Product" scope="request" />
<jsp:setProperty property="*" name="product" /> 
<%
      request.setCharacterEncoding("utf-8");
   	  
      application.setAttribute(product.getPnum(), product);
 
 %>

<jsp:forward page="list.jsp"/>