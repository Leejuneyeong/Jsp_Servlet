<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!--지시자 -->
    
<!-- 오류에 대한 페이지를 연결하는 방법! "errorPage" 속성 활용! -->    
<%@ page errorPage = "Ex06_ErrorPage.jsp"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	2를 0으로 나누너 볼까요? 
	<%= 2/0 %><!--표현식-->
	
</body>
</html>