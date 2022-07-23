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
		// 1. 클라이언트로부터 쿠키값을 가져오기!
		// 쿠키 값은 개별로 가져올 수 없다.! -> 전체 내용 가져오기!
		Cookie[] cookies = request.getCookies();
	
		for(int i=0;i<cookies.length;i++){
			// 웹 페이지 (Html)에 결과값 띄우기!
			out.print(cookies[i].getName()+":"+cookies[i].getValue()+"<br>");
		}
	
	%>
	
	<a href = "Ex01_RemoveCookie.jsp">쿠키 삭제</a>
</body>
</html>