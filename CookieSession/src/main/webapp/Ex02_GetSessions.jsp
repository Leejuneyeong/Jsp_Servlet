<%@page import="java.util.Enumeration"%>
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
		// 세션 한번에 확인하기!
		
		// 각각의 세션 가져오기 -> getAttribute() : 가지고 올 session의 이름 입력!
		// 전체 세션 가져오기 -> Enumeration : 세션을 객체의 집합으로 만들어 가지고 오는 방법!
		
		// Web import 방식 : ctrl+space
		Enumeration names = session.getAttributeNames();
		
		// 전체 출력하기
		while(names.hasMoreElements()){
			out.print(names.nextElement()+"<br>");
		}
		
	%>
	
	
</body>
</html>