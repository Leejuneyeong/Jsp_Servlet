<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
	/* 그룹으로부터 모든 내용을 가지고 올 수 있는 메소드 -> getParameterValues("그룹 명")  */
		String[] random = request.getParameterValues("random");
	/* 가지고 온 값들 중 랜덤으로 하나의 값 추출하기! */
		Random rd = new Random();
	/* ctrl+space 누르면 import 나옴 */
		int index = rd.nextInt(random.length);
		String result = random[index];  
	%>
	
	<%= result %>
</body>
</html>