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
		//session 영역에 값 저장하기
		session.setAttribute("nick","브라운익");
		String nick = (String) session.getAttribute("nick");	
	%>
	
	표현식 : <%=nick %><br>
	el : ${sessionScope.nick}<br>
	
	<a href="sessionScope2.jsp">session2로 이동</a>
	
</body>
</html>