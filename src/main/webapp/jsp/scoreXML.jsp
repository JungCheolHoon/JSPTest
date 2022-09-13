<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="score.ScoreProcess" %>
 
 <%
 	int studentCount = 3;
 	final String [] studentNames = {"홍길동","이순신","강감찬"};
 	final int [] korScores = {100,90,80};
 	final int [] engScores = {80,90,80};
 	final int [] mathScores = {60,80,40};
 	final int [] scoreTotals = new int[studentCount];
 	
 	for (int i=0; i<studentCount; i++){
 		scoreTotals[i] = ScoreProcess.getTotal(korScores[i], engScores[i], mathScores[i]);
 	}
 %>
 
<students>
<% for(int i=0;i<studentCount;i++){ %>
	<student>
		<name><%=studentNames[i] %></name>
		<kor><%=korScores[i]%></kor>
		<eng><%=engScores[i]%></eng>
		<math><%=mathScores[i]%></math>
		<total><%=scoreTotals[i]%></total>
	</student>
<%} %>
</students>