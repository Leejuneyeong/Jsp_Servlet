<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	메인 페이지 <br><br>
	<h1> 메인 페이지 얌</h1>
	
	<a href="Ex07_SubPage.jsp">서브 페이지로 이동</a>
	
	<!-- include 지시자 : 페이지마다 똑같은 내용을 삽입해야 할 때 여러줄을 
	생성하지 않고 하나의 파일을 만들어 바로 연결하는 기법! -->
	
	<%-- JSP의 주석문 --%>
	<%@ include file = "Ex07_Footer.jsp" %>
</body>
</html>