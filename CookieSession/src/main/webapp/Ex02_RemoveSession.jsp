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
		// 세션은 삭제를 위한 메소드가 존재!
		session.removeAttribute("id");
	%>
	
	<a href="Ex02_GetSession.jsp">세션 확인</a>
</body>
</html>