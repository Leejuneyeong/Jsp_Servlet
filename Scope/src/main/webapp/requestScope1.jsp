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
		// request 영역에 값 저장하기
		request.setAttribute("nick","갓파민수");
	
		// request 영역에서 값 불러오기
		String nick = (String) request.getAttribute("nick");
		
		// forwarding 방식으로 값 전달!
		// getRequestDispatcher()
		RequestDispatcher re = request.getRequestDispatcher("requestScope2.jsp");
		re.forward(request, response);
	%>
	
	표현식 : <%= nick %> <br>
	el 기법 : ${requestScope.nick} <br>
	
	<a href="requestScope2.jsp">request2로 이동</a>
	
</body>
</html>