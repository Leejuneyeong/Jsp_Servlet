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
		// name 값 지정하기
		String name = request.getParameter("name");
	
	%>
	<h1>로그인 성공!</h1>
	
	<%= name %>님 확영합니다. <br>
	<a href="main.jsp"><button>main으로 돌아가기</button></a>
</body>
</html>