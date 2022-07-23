<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html에서 사용자가 입력한 "name" 값을 받아와
		웹 브라우저에 띄우기! -->
		
	<!-- request의 경우 내장객체로 따로 선언하지 않아도 사용이 가능 하다 -->
	
	<% request.setCharacterEncoding("utf-8"); %>	
	<% String name = request.getParameter("name"); %>
		
	입력한 이름 : <%= name %>
	
	
</body>
</html>