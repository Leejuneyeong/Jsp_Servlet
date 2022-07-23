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
		application.setAttribute("nick","숨숨");
		String nick = (String) application.getAttribute("nick");
	%>
	
	<%=nick %>
	
	<a href="applicationScope2.jsp">application2로 이동</a>
	
</body>
</html>