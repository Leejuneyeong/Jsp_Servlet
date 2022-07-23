
<!-- 지시자 : JSP 페이지의 전반적인 설정을 지정할 수 있는 기능  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>JSP 페이지 입니다.!</h1>
	
	<!-- 스크립트릿 : 자바 코드를 사용할 수 있도록 도와주는 기능  -->
	<% 
		int num1 = 20;
		int num2 = 20;
		int sum = num1 + num2;
		
		System.out.println("합계 : "+sum);
	%>
	
	<!-- 표현식 : 연산의 결과나 변수를 웹 페이지에 띄우기 위한 기능  -->
	<h4>합계 : <%= sum %></h4>
	
	
	
</body>
</html>