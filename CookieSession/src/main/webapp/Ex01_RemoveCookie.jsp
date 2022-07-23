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
		// 쿠키를 삭제하는 방법? -> 쿠키를 삭제하는 메소드는 따로 존재하지 않는다
		// -> 유효기간 사용!
		
		Cookie cookie = new Cookie("test","");
		
		cookie.setMaxAge(0); // 쿠키 유효기간
		
		//서버에서 클라이언트에게 쿠키값 전송하기! (response)
		
		response.addCookie(cookie);
		
	%>
	
	<a href="Ex01_GetCookie.jsp">쿠키 확인</a>
	
</body>
</html>