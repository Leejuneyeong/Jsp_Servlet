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
		// 1. 쿠키 생성 = Cookie(Name(""), value("")) 문자열만 넣어야함
		Cookie cookie = new Cookie("test","firstcookie");
	
		// 2. 쿠키 유효기간 설정하기
		// setMaxAge(초 단위)
		cookie.setMaxAge(60*60*24*365);
		
		// 3. 클라이언트에게 쿠키 전송!
		// 서버가 클라이언트에게 전송해야 하므로 객체는 response!
		response.addCookie(cookie);
	%>
	<a href="Ex01_GetCookie.jsp">쿠키 확인</a>
</body>
</html>