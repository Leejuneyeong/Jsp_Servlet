<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 쿠키를 생성 -> Cookie 객체 생성!
		// 세션 생성 -> Session 객체 사용! -> JSP 내장객체로 포함되어 있다!
		
		// 1. 세션 생성
		// setAttribute(Name(String),Value(Object))
		session.setAttribute("id","test");
		session.setAttribute("age",25);
	%>
	
	<a href="Ex02_GetSession.jsp">세션 확인</a><br>
	<a href="Ex02_GetSessions.jsp">세션 모두 확인</a>
	
</body>
</html>