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
		// Object 형태의 데이터를 String 변수에 담는 것은 불가능하다
		// -> 다운 캐스팅!
		String id = (String) session.getAttribute("id"); // String 다운 캐스팅
		
		// Object 타입으로 넘어오므로 정수에 대한 타입은 객체 타입인 Integer 사용 !
		Integer age = (Integer) session.getAttribute("age"); //int 다운 캐스팅
		
	%>
	
	아이디 : <%= id %><br>
	나이 : <%=age %><br>
	
	<a href = "Ex02_RemoveSession.jsp">세션 삭제</a>
	<a href = "Ex02_RemoveALLSession.jsp">세션 모두 삭제</a>
	
</body>
</html>