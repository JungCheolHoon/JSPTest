<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page buffer ="4kb" autoFlush="true" %> <!-- 1kb데이터는 1024개로 정해져있으며 autoflush가 false면 자동으로 버퍼를 비우며 출력이 안됌(에러), true면 10000개출력가능 -->

<%
	for(int i=0;i<30000000;i++){
		out.write("A");	// 버퍼에 출력
	}
	out.flush();				//버퍼내의 데이터를 요청
%>