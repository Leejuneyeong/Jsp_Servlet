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
		
		// 클라이언트로부터 요청이 들어왔을 때 다시
		// 다른 곳으로 페이지 요청을 하는 방법!
		// sendRedirect("이동하고자 하는 페이지 주소")
		response.sendRedirect("http://www.naver.com");
	%>
</body>
</html>