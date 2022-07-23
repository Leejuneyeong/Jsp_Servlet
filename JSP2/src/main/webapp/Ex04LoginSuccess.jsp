<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
	<%
	//String id = request.getParameter("id");
	
	// 포워드 방식의 데이터값 받아오기!
	// 기존 방식 : getParameter() -> 반환 타입이 String
	// 포워드 방식 : getAttribute() -> 반롼타입 Object
	// Object(최상위) -> String(하위) 변경 -> 다운 캐스팅 형변환 필요!
	String id = (String) request.getAttribute("id");
	%>
	<b><%=id%>님 환영합니다!</b><br>
	<a href="Ex04Login.html">로그아웃</a>
</body>
</html>